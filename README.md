#Whisper

Whisper is a tool for anonymously providing and seeking feedback from teams of people. I was tasked recently with finding a way to measure the happiness and satisfaction of Fullscreen's engineering team. I opted not to create a set of surveys because a survey's own question set severely limits the type of feedback you can get. 

To ensure that feedback is as anonymous as possible, Whisper doesn't use a login system of any kind. To help ensure that discussions are kept private to your organization, we recommend you either install Whisper in a VPC that is only reachable from your offices, or protect it by setting the environment variable `BASIC_AUTH_PASSWORD` and sharing that password with your team members. 

## Rooms

In Whisper, discussions happen in rooms. You can use a room for a team of people, a department, or the whole company. We recommend having as many rooms as is appropriate to help keep discussions relevant. 

Anyone can post a topic to a room. You can generally post topics sharing a thought about something, or you can post a topic that poses a question to the room. If you wish to pose a question to the room, you can choose to email the room members about that topic. 

## Team Management

Although there are no logins for Whisper, each room has members so that they can be notified when new topics are added. Currently the only way to manage these memberships is through a Rails console. 

## To-do

- [ ] Actual admin management interface
- [ ] Team polling with discrete responses
- [ ] Less ugly interface