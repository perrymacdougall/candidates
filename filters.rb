# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  @candidates.each do |candidate|
    if id == candidate[:id]
      return candidate
    end
  end

  nil
end

def experienced?(candidate)
  # Your code Here
  candidate[:years_of_experience] >= 2 ? true : false
end

def qualified_candidates(candidates)
  # Your code Here
  first_sort = []
  criteria_met = []

  candidates.each do |candidate|
    if candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python') then
      first_sort << candidate
    end
  end

  first_sort.each do |candidate|
    if candidate[:years_of_experience] >= 2 && candidate[:github_points] >= 100 && candidate[:age] >= 18 then
      criteria_met << candidate
    end
  end

  return criteria_met
end

# More methods will go below
def ordered_by_qualifications(candidates)

  candidates.sort_by{ |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }

end