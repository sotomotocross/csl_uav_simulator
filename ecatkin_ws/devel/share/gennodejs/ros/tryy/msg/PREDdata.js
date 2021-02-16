// Auto-generated. Do not edit!

// (in-package tryy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PREDdata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.box_1 = null;
      this.box_2 = null;
      this.box_3 = null;
      this.box_4 = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('box_1')) {
        this.box_1 = initObj.box_1
      }
      else {
        this.box_1 = [];
      }
      if (initObj.hasOwnProperty('box_2')) {
        this.box_2 = initObj.box_2
      }
      else {
        this.box_2 = [];
      }
      if (initObj.hasOwnProperty('box_3')) {
        this.box_3 = initObj.box_3
      }
      else {
        this.box_3 = [];
      }
      if (initObj.hasOwnProperty('box_4')) {
        this.box_4 = initObj.box_4
      }
      else {
        this.box_4 = [];
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PREDdata
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [box_1]
    bufferOffset = _arraySerializer.int32(obj.box_1, buffer, bufferOffset, null);
    // Serialize message field [box_2]
    bufferOffset = _arraySerializer.int32(obj.box_2, buffer, bufferOffset, null);
    // Serialize message field [box_3]
    bufferOffset = _arraySerializer.int32(obj.box_3, buffer, bufferOffset, null);
    // Serialize message field [box_4]
    bufferOffset = _arraySerializer.int32(obj.box_4, buffer, bufferOffset, null);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PREDdata
    let len;
    let data = new PREDdata(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [box_1]
    data.box_1 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [box_2]
    data.box_2 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [box_3]
    data.box_3 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [box_4]
    data.box_4 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.box_1.length;
    length += 4 * object.box_2.length;
    length += 4 * object.box_3.length;
    length += 4 * object.box_4.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tryy/PREDdata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'daae477024268b88941e5fe84cf3bcb0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32[] box_1
    int32[] box_2
    int32[] box_3
    int32[] box_4
    time stamp
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PREDdata(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.box_1 !== undefined) {
      resolved.box_1 = msg.box_1;
    }
    else {
      resolved.box_1 = []
    }

    if (msg.box_2 !== undefined) {
      resolved.box_2 = msg.box_2;
    }
    else {
      resolved.box_2 = []
    }

    if (msg.box_3 !== undefined) {
      resolved.box_3 = msg.box_3;
    }
    else {
      resolved.box_3 = []
    }

    if (msg.box_4 !== undefined) {
      resolved.box_4 = msg.box_4;
    }
    else {
      resolved.box_4 = []
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = PREDdata;
