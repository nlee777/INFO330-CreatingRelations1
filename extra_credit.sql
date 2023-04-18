-- Create the timeslots table
CREATE TABLE timeslots (
    id INTEGER PRIMARY KEY,
    start_time TIME,
    end_time TIME
);

-- modify the rooms table
CREATE TABLE rooms (
    id INTEGER PRIMARY KEY,
    room_number VARCHAR(10)
);

-- Create the schedule table
CREATE TABLE schedule (
    coursecode VARCHAR(40),
    roomid INTEGER REFERENCES rooms(id),
    timeslotid INTEGER REFERENCES timeslots(id),
    PRIMARY KEY (roomid, timeslotid),
    UNIQUE (timeslotid)
);
