# claude-code-session-keeper
automate start a session while keep your working session maxium in daily ~

<img width="578" height="352" alt="BBCA1097-DF91-439B-9C34-D3E3A924B517" src="https://github.com/user-attachments/assets/e99f3bff-34a7-4371-a016-43c35f90986a" />

## Usage

Just keep this bash running background all day, it will automate start a session at `6:00`, `11:00`, `16:00`, `21:00`.

```bash
bash -c "./keep.sh"
```

## Why
Claude-Code的session每5小时刷新一次，自动持续维护session可以最大化利用冷却区间。这意味着用户可以通过合理安排session开始时间，延长使用时间段，提升使用效率。
举例说明，如果你的工作时间是上午10点到下午4点，你在早上6点激活第一个Claude-Code session，这个session有效期为6点到11点；接着在11点再激活第二个session，其有效期为11点到16点。这样，从你10点开始工作到11点第一个session结束期间这一个小时内，你实际上拥有两个session同时在生效，总共可以使用5小时的Claude-Code资源，极大提升了工作时间内的使用量和效率。

Claude-Code refreshes its session every 5 hours, and by automatically maintaining these sessions continuously, it maximizes the utilization of the cooldown intervals. This means users can strategically start new sessions to extend their effective use period and improve efficiency.
For example, if your work hours are from 10:00 AM to 4:00 PM, and you activate the first Claude-Code session at 6:00 AM, this session lasts from 6:00 AM to 11:00 AM. You then activate a second session at 11:00 AM, lasting from 11:00 AM to 4:00 PM. In this way, during the one hour between 10:00 AM (your work start time) and 11:00 AM (end of the first session), you effectively have access to two sessions running concurrently, totaling 5 hours of Claude-Code usage within your work period. This approach greatly increases the usable amount of Claude-Code during working hours.

<img width="1021" height="306" alt="image" src="https://github.com/user-attachments/assets/7ed9a18c-9322-4320-b6b0-3aea14fdaff2" />
