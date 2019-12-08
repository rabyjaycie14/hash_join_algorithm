namespace :join_table do
    desc "Join all columns in Students and Courses"
  
    task :join_all => :environment do
        puts "---------------------------------------------------------------------------------------------------------------------"
        puts "  Course ID               Course Name                     Student ID                      Student Name"
        puts "---------------------------------------------------------------------------------------------------------------------"
        hash_table = Student.joins(:courses).pluck_to_hash('courses.id','courses.course_name','students.id','students.student_name')

        puts ( 
            hash_table.map { |k,v| 
            "#{k} : #{v} \n" }
            .sort 
        )
        puts "---------------------------------------------------------------------------------------------------------------------"
    end

    desc "Create join table based on a a specific table, column and condition"
  
    task :join_where, [:table_name, :column_name, :condition] => :environment do | t, args |
        puts "---------------------------------------------------------------------------------------------------------------------"
        puts "  Course ID               Course Name                     Student ID                      Student Name"
        puts "---------------------------------------------------------------------------------------------------------------------"
        hash_table = Student.joins(:courses).where("#{args.table_name}.#{args.column_name}": "#{args.condition}").pluck_to_hash('courses.id','courses.course_name','students.id','students.student_name')

        puts ( 
            hash_table.map { |k,v| 
            "#{k} : #{v} \n" }
            .sort 
        )
        puts "---------------------------------------------------------------------------------------------------------------------"
    end
  end
  