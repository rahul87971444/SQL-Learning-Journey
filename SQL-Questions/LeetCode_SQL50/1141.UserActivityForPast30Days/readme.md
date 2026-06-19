# User Activity for the Past 30 Days I

Write a solution to find the daily active user count for a period of **30 days ending 2019-07-27 inclusively**.

A user was active on a day if they made at least one activity on that day.

Return the result table in any order.

The result format is in the following example.

> Note: Any activity from (`open_session`, `end_session`, `scroll_down`, `send_message`) will be considered valid activity for a user to be considered active on a day.

---

## Example 1

### Input

### Activity table

| user_id | session_id | activity_date | activity_type |
|----------|------------|---------------|---------------|
| 1 | 1 | 2019-07-20 | open_session |
| 1 | 1 | 2019-07-20 | scroll_down |
| 1 | 1 | 2019-07-20 | end_session |
| 2 | 4 | 2019-07-20 | open_session |
| 2 | 4 | 2019-07-21 | send_message |
| 2 | 4 | 2019-07-21 | end_session |
| 3 | 2 | 2019-07-21 | open_session |
| 3 | 2 | 2019-07-21 | send_message |
| 3 | 2 | 2019-07-21 | end_session |
| 4 | 3 | 2019-06-25 | open_session |
| 4 | 3 | 2019-06-25 | end_session |

---

## Output

| day | active_users |
|-----|--------------|
| 2019-07-20 | 2 |
| 2019-07-21 | 2 |

---

## Explanation

### 2019-07-20

Active users:

- User 1
- User 2

Total active users = **2**

---

### 2019-07-21

Active users:

- User 2
- User 3

Total active users = **2**

---

### 2019-06-25

Although User 4 was active on this day, it is **outside the 30-day period ending on 2019-07-27**, so it is not included.

---

### Note

- Count each user only once per day, even if they perform multiple activities.
- Days with **0 active users** should **not** appear in the result.
