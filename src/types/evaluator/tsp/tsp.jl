load("../simple/simple",      dirname(@__FILE__))
load("../../fitness/simple",  dirname(@__FILE__))

type TSPEvaluator <: SimpleEvaluator
  cities::Int
  threads::Int
  distance::Array{Int, 2}

  TSPEvaluator(d::Array{Float, 2}, t::Int) =
    new(length(d), t, d)
end

function evaluate!(e::TSPEvaluator, s::State, sch::FitnessScheme, c::Individual)
  tour = get(c.genome)
  length = zero(Float)
  for i in 1:e.cities-1
    length += e.distance[tour[i], tour[i+1]]
  end
  length += e.distance[tour[end], tour[1]]
  fitness(sch, length)
end
