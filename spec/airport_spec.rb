require "airport"

describe Airport do

  describe "#land" do

    it "should be able to land one plane" do
      airport = Airport.new
      plane = Plane.new
      expect(airport.land(plane)).to eq plane
    end

    it "should raise an error when the airport is full" do
      airport = Airport.new
      plane = Plane.new
      airport.land(plane)
      expect { airport.land(plane) }.to raise_error("The airport is full")
    end

  end

  describe "#take_off" do

    it "should be able to take off a plane" do
      airport = Airport.new
      plane = Plane.new
      airport.land(plane)
      expect(airport.take_off).to eq plane
    end

    it "raises an error when the airport is empty" do
      airport = Airport.new
      expect { airport.take_off }.to raise_error("The airport is empty")
    end

  end

end
