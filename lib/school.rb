class School
    attr_accessor :roster 
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster.key?(grade)
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end

    def grade(grade)
        if @roster.key?(grade)
            @roster[grade]
        end
    end

    def sort
        @roster.map do |key, value|
            value.sort!
        end
        @roster
    end
end
