json.id @location.id
json.name @location.name
end
json.current do 
  json.temp @location.recordings.last.temp
  json.status @location.recordings.last.status
end