//
// Copyright (c) 2002-2016 WEINZIERL ENGINEERING GmbH
// All rights reserved.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
// SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY DAMAGES OR OTHER LIABILITY,
// WHETHER IN CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
// WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE
//

#include <kdrive/baos/Baos.h>
#include <kdrive/connector/CallbackThread.h>
#include <kdrive/utility/Logger.h>
#include <kdrive/utility/LoggerFormatter.h>
#include <Poco/Exception.h>
#include <Poco/Format.h>
#include <iostream>

using namespace kdrive::baos;
using namespace kdrive::connector;
using namespace kdrive::utility;
using Poco::Exception;
using Poco::format;

CLASS_LOGGER("BaosSerial")

namespace
{

	void getServerItems(BaosServerItems baosServerItems)
	{
		try
		{
			poco_information(LOGGER(), format("(t4) Hardware Type: %s", LoggerFormatter::toHex(baosServerItems.getHardwareType())));
			poco_information(LOGGER(), format("(t4) Hardware Version: %d", (int) baosServerItems.getHardwareVersion()));
			poco_information(LOGGER(), format("(t4) Firmware Version: %d", (int) baosServerItems.getFirmwareVersion()));
			poco_information(LOGGER(), format("(t4) Manufacture Code Device: %u", baosServerItems.getManufactureCodeDevice()));
			poco_information(LOGGER(), format("(t4) Manufacture Code App: %u", baosServerItems.getManufactureCodeApp()));
			poco_information(LOGGER(), format("(t4) Application Id: %u", baosServerItems.getApplicationId()));
			poco_information(LOGGER(), format("(t4) Application Version: %d", (int) baosServerItems.getApplicationVersion()));
			poco_information(LOGGER(), format("(t4) Serial Number: %s", LoggerFormatter::toHex(baosServerItems.getSerialNumber())));
			poco_information(LOGGER(), format("(t4) Time Since Reset: %lu", baosServerItems.getTimeSinceReset()));
			poco_information(LOGGER(), format("(t4) Bus Connected: %b", baosServerItems.isBusConnected()));
			poco_information(LOGGER(), format("(t4) Max Buffer Size: %u", baosServerItems.getMaxBufferSize()));
			poco_information(LOGGER(), format("(t4) Buffer Size: %u", baosServerItems.getBufferSize()));
			poco_information(LOGGER(), format("(t4) Length of Description String: %u", baosServerItems.getLengthOfDescriptionString()));
			poco_information(LOGGER(), format("(t4) Programming Mode: %d", (int) baosServerItems.getProgrammingMode()));
		}
		catch (Exception& exception)
		{
			poco_error(LOGGER(), format("(t4) %s", exception.displayText()));
		}
	}
}

int main(int argc, char* argv[])
{
	// configure the logging channel
	INIT_ROOT_CONSOLE_LOGGER();

	try
	{
		// connects the BAOS FT 1.2 Module
		FT12Connector::Ptr connector = std::make_shared<FT12Connector>();
		connector->open("/dev/ttyAMA0");

		getServerItems(connector)
		
		// get the Serial Number
		BaosServerItems baosServerItems(connector);
		poco_information(LOGGER(), format("Serial Number: %s", LoggerFormatter::toHex(baosServerItems.getSerialNumber())));
		poco_information(LOGGER(), format("(t4) Bus Connected: %b", baosServerItems.isBusConnected()));

		// Reads the data point descriptions
		BaosDatapointDescriptions baosDatapointDescriptions(connector);

		baosDatapointDescriptions.readFromDevice();
		const BaosDatapointDescriptions::Descriptions descriptions = baosDatapointDescriptions.getDescriptions();

		const unsigned int count = descriptions.size();
		poco_information(LOGGER(), format("%u items found", count));

		for (const auto& item : descriptions)
		{
			const BaosDatapointDescription& d = item.second;
			const int id = d.getId();
			const int dpt = d.getDatapointType();
			const int bits = d.getValueTypeSizeBits();
			const int bytes = d.getValueTypeSizeBytes();
			const std::string size = d.isBitType() ? format("%d Bits", bits) : format("%d Bytes", bytes);
			poco_information(LOGGER(), format("Id: %d, Datapoint type %d, Size: %s", id, dpt, size));
		}
	}
	catch (Exception& exception)
	{
		LOGGER().log(exception);
	}

	return EXIT_SUCCESS;
}
