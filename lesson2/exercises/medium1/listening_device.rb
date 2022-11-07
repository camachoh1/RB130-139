=begin 

Below we have a listening device. It lets us record something that is said and store it for later use. In general, this is how the device should be used:

Listen for somethin, and if anything is said, record for later use. If nothing is said, then do not record anything.

Anything that is said is retreived by this listening device via a block. If nothing is said, then no block will be passed in. The listening device can also output the most recent recording using Device#play method. 

Finish the above program so that the specifications listed above are met. 

=end 

class Device
  def initialize
    @recording = []
  end

  def record(recording)
    @recording << recording
  end

  def listen
    message = yield if block_given?
    record(message)
  end

  def play
    @recording[0]
  end
end

p listener = Device.new
p listener.listen { "Hello World!" }
p listener.listen
p listener.play # Outputs "Hello World!"