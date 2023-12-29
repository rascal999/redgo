#!/usr/bin/env python3
"""P110 & P115 Example"""

import asyncio
import os
import sys
from datetime import datetime

from tapo import ApiClient, EnergyDataInterval


async def main():
    tapo_username = os.getenv("TAPO_USERNAME")
    tapo_password = os.getenv("TAPO_PASSWORD")
    ip_address = "192.168.0.183"

    client = ApiClient(tapo_username, tapo_password)

    device = await client.p110(ip_address)

    device_info = await device.get_device_info()

    if device_info.on_time > 0:
        print("Turning device off...")
        await device.off()
    else:
        print("Turning device on...")
        await device.on()

if __name__ == "__main__":
    asyncio.run(main())
