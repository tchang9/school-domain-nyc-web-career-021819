# code here!
class School

    attr_accessor :name, :roster

    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(student_name, grade)
        if roster.key?(grade)
            roster[grade].push(student_name)
        else
            roster[grade] = [student_name]
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each do |grade, list_of_students|
            roster[grade] = list_of_students.sort
        end
        return roster
    end
end
