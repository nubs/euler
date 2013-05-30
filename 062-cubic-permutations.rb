i=465
cubes = {}
while true
  cube = i**3
  digits = cube.to_s.split(//).sort.join
  cubes[digits] ||= []
  cubes[digits] << cube
  if cubes[digits].length > 4
    p cubes[digits]
    exit
  end

  i += 1
end
