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
        "Reunión mensual en #{self.location} sobre #{self.purpose} el dia #{self.day} a las #{self.hour}:#{self.min}."
    end
    
end

class DailyAppointment < Appointment
    def occurs_on?(otherhour,min)
        if self.hour == otherhour && self.min == othermin
            true
        else
            false
        end
    end
    
    def to_s
        "Reunión diaria en #{self.location} sobre #{self.purpose} a la(s) #{self.hour}:#{self.min}."     
    end
end

class OneTimeAppointment < Appointment

    attr_accessor :day, :month, :year

    def initialize(location,purpose,hour,min,day,month,year)
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
        "Reunión única en #{self.location} sobre #{self.purpose} el #{self.day}/#{self.month}/#{year} a las #{self.hour}:#{self.min}."
    end
    

end

puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)
puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)
