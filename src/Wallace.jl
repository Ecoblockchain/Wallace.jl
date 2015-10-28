push!(LOAD_PATH, dirname(@__FILE__))

"""
TODO: Document Wallace module.
"""
module Wallace
  using StatsBase
  using utility
  using common
  using core
  importall distance
  importall fitness
  importall individual
  importall representation
  importall selection
  importall variation
  importall crossover
  importall mutation
  importall breeder
  importall _deme_
  importall population
  importall initialiser
  importall state
  importall criterion
  importall replacement
  importall evaluator
  importall logger
  using algorithm; export run!
  import example
end
