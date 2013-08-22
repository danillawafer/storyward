seth = User.create(username: 'danillawafer', password: 'fastball', email:'seth@seth.com')

the_story = Story.create(title: 'Adventure Story', content: 'There once was a man who went on a wild adventure to a faraway land! Help! What\'s next?...', user_id: 1)

story_road_1 = Road.create(user_id: 1, story_id: 1, content: 'That land happened to be Montana!')	
story_road_2 = Road.create(user_id: 1, story_id: 1, content: 'That land happened to be the Far East!')

Vote.create(user_id: 1, road_id: 2, direction: 'up')
Vote.create(user_id: 1, road_id: 2, direction: 'up')

road = Road.find_by_id(story_road_2.id)
road.up_votes += 1
road.save

Tag.create(name: 'Action')
Tag.create(name: 'Adventure')

StoryTag.create(story_id: the_story.id, tag_id: 1)
StoryTag.create(story_id: the_story.id, tag_id: 2)

Favorite.create(user_id: the_story.user_id, story_id: the_story.id)

