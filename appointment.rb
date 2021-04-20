class Appointment

    attr_reader :location, :purpose, :hour , :min

    def initialize(location,purpose,hour,min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

class MonthlyAppointment < Appointment

    attr_reader :day

    def initialize(location,purpose,hour,min,day)
        super(location,purpose,hour,min)
        @day = day
    end

    def occurs_on?(otherday)
        if self.day == otherday
            true
        else
            false
        end
    end
    
    def to_s
        puts "Reunión mensual en #{self.locate} sobre #{self.purpose} a las #{self.hour}:#{self.min}"
    end
    
end

class DailyAppointment < Appointment
    def occurs_on?(otherhour,min)
        if self.hour == otherhour && self.min == othermin
    end
    
    def to_s
        puts "Reunión diaria en #{self.location} sobre #{self.purpose} a la(s) #{self.hour}:#{self.min}."     
    end
    
end

class OneTimeAppointment < Appointment

    attr_accessor :day, :month, :year

    def initialize(day,month,year,location,purpose,hour,min)
        super(location,purpose,hour,min)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(otherDay,otherMonth,otherYear)
        if self.day = otherDay && self.month ==otherMonth && self.year == otherYear
            true
        else
            false
        end
    end

    def to_s
        puts "Reunión mensual en #{self.location} sobre #{self.purpose} el #{self.day}/#{self.month}/#{year}."
    end
    

end