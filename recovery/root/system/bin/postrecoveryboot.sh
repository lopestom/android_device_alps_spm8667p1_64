#!/sbin/sh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

mkdir -p "/tmp/system";
mount -w "/dev/block/mapper/system" "/tmp/system";

if [ -f "/tmp/system/recovery-from-boot.p" ]; then
  echo "I:postrecoveryboot: Removing stock recovery file in /system to prevent the stock ROM from replacing TWRP." >> /tmp/recovery.log;
  rm "/tmp/system/bin/install-recovery.sh";
  rm "/tmp/system/recovery-from-boot.p";
fi;

umount "/tmp/system";
rm -r "/tmp/system";

exit 0;
