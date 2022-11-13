class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        students = Student.all.order(grade: :desc)
        render json: students
    end

    def highest_grade
        highest_grade_student = Student.all.order(grade: :desc).limit(1)[0]
        render json: highest_grade_student
    end
end
