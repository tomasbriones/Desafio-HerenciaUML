class Appointment
    def initialize(location,purpose,hour,min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

class MonthlyAppointment > Appointment
    def initialize(location,purpose,hour,min,day)
        super(location,purpose,hour,min)
        @day = day
    end
end

class DailyAppointment > Appointment
    
end