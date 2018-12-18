class Event < ApplicationRecord
  # has_many :occurrence

  def create

  end

  # def update
  # end

  def delete
  end

  def findStartMonth
    # @month = month
    @numMonth
    case self.startMonth
    when "January"
      @numMonth = 1
    when "February"
      @numMonth = 2
    when "March"
      @numMonth = 3
    when "April"
      @numMonth = 4
    when "May"
      @numMonth = 5
    when "June"
      @numMonth = 6
    when "July"
      @numMonth = 7
    when "August"
      @numMonth = 8
    when "September"
      @numMonth = 9
    when "October"
      @numMonth = 10
    when "November"
      @numMonth = 11
    when "December"
      @numMonth = 12

    end
    @numMonth
  end

  def findEndMonth
    # @month = month
    @numMonthEnd
    case self.endMonth
    when "January"
      @numMonthEnd = 1
    when "February"
      @numMonthEnd = 2
    when "March"
      @numMonthEnd = 3
    when "April"
      @numMonthEnd = 4
    when "May"
      @numMonthEnd = 5
    when "June"
      @numMonthEnd = 6
    when "July"
      @numMonthEnd = 7
    when "August"
      @numMonthEnd = 8
    when "September"
      @numMonthEnd = 9
    when "October"
      @numMonthEnd = 10
    when "November"
      @numMonthEnd = 11
    when "December"
      @numMonthEnd = 12

    end
    @numMonthEnd
  end

  def occurrenceLogic
    @newStartMonth = self.findStartMonth
    @newEndMonth = self.findEndMonth
    @newStartDate = self.startDate
    @newEndDate = self.endDate
    @evenOrOdd = self.findStartMonth + 2


    while @newStartMonth <= @newEndMonth
      self.occurrenceCreator

      case self.reoccurType
      when "Daily"
        @newStartDate += 1
        if @evenOrOdd % 2 == 0
          if @newStartDate > 30
            @newStartDate = (@newStartDate - 30)
            @newStartMonth += 1
          end

        else
            if @newStartDate > 31
              @newStartDate = (@newStartDate - 31)
              @newStartMonth += 1
              @evenOrOdd += 1
            end

        end

      when "Weekly"
        @newStartDate += 7
        if @evenOrOdd % 2 == 0

          if @newStartDate > 30
            @newStartDate = (@newStartDate - 30)
            @newStartMonth += 1
          end
        else
            if @newStartDate > 31
              @newStartDate = (@newStartDate - 31)
              @newStartMonth += 1
              @evenOrOdd += 1
            end

        end
      when "Monthly"
        @newStartMonth += 1
      when "Quarterly"
        @newStartMonth += 3
      end

    end
  end

  def occurrenceCreator
    @newId = self.id.to_i
    @x = Occurrence.new(eventID: self.id, startMonthO: @newStartMonth, startdateO: @newStartDate, endDateO: @newEndDate, endMonthO: @newEndMonth, nameO: self.name, descriptionO: self.description)
    @x.save
    @x
  end

  def destroyOccurrence
    @occur = Occurrence.all

    @occur.each do |t|
      # case t.eventID
      # when self.id.to_i
      #   t.destroy
      # end
      @oldId = self.id.to_i
      if t.eventID == @oldId
        t.destroy
      end
    end
  end

end
