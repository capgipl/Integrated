
using IPL_Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Employee_Exceptions;

namespace IPL_DAL
{
    /// <summary>
    /// Employee Operations are created in this file
    /// </summary>
    public class DAL
    {

        #region Team Dal
        public int Add_Team(Team t)
        {
            try
            {
                Entities1 entity = new Entities1();
                Team team = new Team()
                {
                    TeamId = t.TeamId,
                    TeamName = t.TeamName,
                    HomeGround = t.HomeGround,
                    Owners = t.Owners
                };
                entity.Teams.Add(team);

                entity.SaveChanges();


            }
            catch (Exception e)
            {
                throw (e);

            }
            return 1;
        }

        public List<Team> Search_Team(int id)
        {

            var obj = new List<Team>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Teams
                       where t.TeamId == id
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        public int Delete_Team(int id)
        {
            var obj = new List<Team>();
            try
            {
                Entities1 entity = new Entities1();


                obj = (from t in entity.Teams
                       where t.TeamId == id
                       select t).ToList();
                foreach (var t in obj)
                {
                    entity.Teams.Remove(t);
                }

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return 1;
        }

        public void Update_Team(Team x)
        {
            var obj = new List<Team>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Teams
                       where t.TeamId == x.TeamId
                       select t).ToList();
                obj[0].TeamName = x.TeamName;
                obj[0].HomeGround = x.HomeGround;
                obj[0].Owners = x.Owners;


                entity.SaveChanges();
            }


            catch (Exception e)
            {
                throw (e);

            }
        }
        public List<Team> SelectAll_Team()
        {
            List<Team> pl = new List<Team>();
            try
            {

                Entities1 entity = new Entities1();

                var obj = (from t in entity.Teams                           
                           select new
                           {
                               t.TeamId,
                            t.HomeGround,
                            t.TeamName,
                            t.Owners
                           });
                foreach (var up in obj)
                {
                    pl.Add(new Team()
                    {
                        TeamId = up.TeamId,
                        TeamName = up.TeamName,
                        HomeGround= up.HomeGround,
                        Owners=up.Owners
                    });
                }

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return pl;
        }

        #endregion

        #region Player DAL
        public int Add_Player(Player p)
        {
            try
            {
                Entities1 entity = new Entities1();
                Player player = new Player()
                {
                    PlayerId = p.PlayerId,
                    PlayerName = p.PlayerName,
                    Age = p.Age,
                    TeamId = p.TeamId,

                };
                entity.Players.Add(player);

                entity.SaveChanges();


            }
            catch (Exception e)
            {
                throw (e);

            }
            return 1;
        }

        public List<Player> Search_Player(int id)
        {

            var obj = new List<Player>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Players
                       where t.PlayerId == id
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        public int Delete_Player(int id)
        {
            var obj = new List<Player>();
            try
            {
                Entities1 entity = new Entities1();


                obj = (from t in entity.Players
                       where t.PlayerId == id
                       select t).ToList();
                foreach (var t in obj)
                {
                    entity.Players.Remove(t);
                }

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return 1;
        }

        public void Update_Player(Player x)
        {
            var obj = new List<Player>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Players
                       where t.PlayerId == x.PlayerId
                       select t).ToList();
                obj[0].PlayerName = x.PlayerName;

                obj[0].TeamId = x.TeamId;
                obj[0].Age = x.Age;



                entity.SaveChanges();
            }


            catch (Exception e)
            {
                throw (e);

            }
        }
        public List<Player> SelectAll_Player()
        {
            List<Player> pl = new List<Player>();
            try
            {

                Entities1 entity = new Entities1();

                var obj = (from t in entity.Players
                           join t1 in entity.Teams on t.TeamId equals t1.TeamId
                           where t.TeamId == t1.TeamId
                           select new
                           {
                               t.PlayerId,
                               t1.TeamId,
                               t.PlayerName,
                               t.Age
                           });
                foreach (var up in obj)
                {
                    pl.Add(new Player()
                    {
                        PlayerId = up.PlayerId,
                        PlayerName = up.PlayerName,
                        TeamId = up.TeamId,
                        Age = up.Age
                    });
                }

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return pl;
        }
        #endregion

        #region Venue DAL
        public int Add_Venue(Venue v)
        {
            try
            {
                Entities1 entity = new Entities1();
                Venue venue = new Venue()
                {
                    VenueId = v.VenueId,
                    Location = v.Location,
                    VenueDescription = v.VenueDescription

                };
                entity.Venues.Add(venue);

                entity.SaveChanges();


            }
            catch (Exception e)
            {
                throw (e);

            }
            return 1;
        }

        public List<Venue> Search_Venue(int id)
        {

            var obj = new List<Venue>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Venues
                       where t.VenueId == id
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        public int Delete_Venue(int id)
        {
            var obj = new List<Venue>();
            try
            {
                Entities1 entity = new Entities1();


                obj = (from t in entity.Venues
                       where t.VenueId == id
                       select t).ToList();
                foreach (var t in obj)
                {
                    entity.Venues.Remove(t);
                }

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return 1;
        }

        public void Update_Venue(Venue x)
        {
            var obj = new List<Venue>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Venues
                       where t.VenueId == x.VenueId
                       select t).ToList();
                obj[0].VenueId = x.VenueId;

                obj[0].Location = x.Location;
                obj[0].VenueDescription = x.VenueDescription;



                entity.SaveChanges();
            }


            catch (Exception e)
            {
                throw (e);

            }
        }
        public List<Venue> SelectAll_venue()
        {
            var obj = new List<Venue>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Venues
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }
        #endregion

        #region Match DAL
        public int Add_Match(Match m)
        {
            try
            {
                Entities1 entity = new Entities1();
                Match match = new Match()
                {
                    MatchId = m.MatchId,
                    TeamOneId = m.TeamOneId,
                    TeamTwoId = m.TeamTwoId,
                    VenueId = m.VenueId

                };
                entity.Matches.Add(match);

                entity.SaveChanges();


            }
            catch (Exception e)
            {
                throw (e);

            }
            return 1;
        }

        public List<Match> Search_Match(int id)
        {

            var obj = new List<Match>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Matches
                       where t.MatchId == id
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        public int Delete_Match(int id)
        {
            var obj = new List<Match>();
            try
            {
                Entities1 entity = new Entities1();


                obj = (from t in entity.Matches
                       where t.MatchId == id
                       select t).ToList();
                foreach (var t in obj)
                {
                    entity.Matches.Remove(t);
                }

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return 1;
        }

        public void Update_Match(Match x)
        {
            var obj = new List<Match>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Matches
                       where t.MatchId == x.MatchId
                       select t).ToList();

                obj[0].MatchId = x.MatchId;

                obj[0].TeamOneId = x.TeamOneId;
                obj[0].TeamTwoId = x.TeamTwoId;

                obj[0].VenueId = x.VenueId;

                entity.SaveChanges();
            }


            catch (Exception e)
            {
                throw (e);

            }
        }

        public List<Match> SelectAll_Match()
        {
            var obj = new List<Match>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Matches
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        #endregion

        #region Schedule DAL
        public int Add_Schedule(Schedule s)
        {
            try
            {
                Entities1 entity = new Entities1();
                Schedule sch = new Schedule()
                {
                    ScheduleId = s.ScheduleId,
                    MatchId = s.MatchId,
                    Schedule_VenueId = s.Schedule_VenueId,
                    ScheduleDate = s.ScheduleDate,
                    StartTime = s.StartTime,
                    EndTime = s.EndTime

                };
                entity.Schedules.Add(sch);

                entity.SaveChanges();


            }
            catch (Exception e)
            {
                throw (e);

            }
            return 1;
        }

        public List<Schedule> Search_Schedule(int id)
        {

            var obj = new List<Schedule>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Schedules
                       where t.ScheduleId == id
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        public int Delete_Schedule(int id)
        {
            var obj = new List<Schedule>();
            try
            {
                Entities1 entity = new Entities1();


                obj = (from t in entity.Schedules
                       where t.ScheduleId == id
                       select t).ToList();
                foreach (var t in obj)
                {
                    entity.Schedules.Remove(t);
                }

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return 1;
        }

        public void Update_Schedule(Schedule x)
        {
            var obj = new List<Schedule>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Schedules
                       where t.ScheduleId == x.ScheduleId
                       select t).ToList();

                obj[0].ScheduleId = x.ScheduleId;

                obj[0].MatchId = x.MatchId;
                obj[0].Schedule_VenueId = x.Schedule_VenueId;

                obj[0].ScheduleDate = x.ScheduleDate;
                obj[0].StartTime = x.StartTime;
                obj[0].EndTime = x.EndTime;

                entity.SaveChanges();
            }


            catch (Exception e)
            {
                throw (e);

            }
        }

        public List<Schedule> SelectAll_Schedule()
        {
            var obj = new List<Schedule>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Schedules
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        #endregion

        #region Statistics DAL
        public int Add_Statistics(Stat s)
        {
            try
            {
                Entities1 entity = new Entities1();
                Stat st = new Stat()
                {
                    TeamId = s.TeamId,
                    Played = s.Played,
                    Won = s.Won,
                    Lost = s.Lost,
                    Tied = s.Tied,
                    NR = s.NR,
                    NetRR = s.NetRR,
                    Pts = s.Pts,
                    FromPoints = s.FromPoints
                };
                entity.Stats.Add(st);
                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }
            return 1;
        }

        public List<Stat> Search_Statistics(int id)
        {

            var obj = new List<Stat>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Stats
                       where t.StatId == id
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        public int Delete_Statistics(int id)
        {
            var obj = new List<Stat>();
            try
            {
                Entities1 entity = new Entities1();


                obj = (from t in entity.Stats
                       where t.TeamId == id
                       select t).ToList();
                foreach (var t in obj)
                {
                    entity.Stats.Remove(t);
                }

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return 1;
        }

        public void Update_Statistics(Stat x)
        {
            var obj = new List<Stat>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Stats
                       where t.TeamId == x.TeamId
                       select t).ToList();

                obj[0].TeamId = x.TeamId;

                obj[0].Played = x.Played;
                obj[0].Won = x.Won;
                obj[0].Lost = x.Lost;
                obj[0].Tied = x.Tied;
                obj[0].NR = x.NR;
                obj[0].NetRR = x.NetRR;
                obj[0].Pts = x.Pts;
                obj[0].FromPoints = x.FromPoints;

                entity.SaveChanges();
            }


            catch (Exception e)
            {
                throw (e);

            }
        }
        public List<Stat> SelectAll_Statistics()
        {
            var obj = new List<Stat>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.Stats
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }
        #endregion

        #region Ticket Category DAL
        public int Add_Tc(TicketCategory s)
        {
            try
            {
                Entities1 entity = new Entities1();
                TicketCategory st = new TicketCategory()
                {
                    TicketCategoryId = s.TicketCategoryId,
                    TicketCategoryName = s.TicketCategoryName,
                    TicketDescription = s.TicketDescription
                };
                entity.TicketCategories.Add(st);
                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }
            return 1;
        }

        public List<TicketCategory> Search_Tc(int id)
        {

            var obj = new List<TicketCategory>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.TicketCategories
                       where t.TicketCategoryId == id
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        public int Delete_Tc(int id)
        {
            var obj = new List<TicketCategory>();
            try
            {
                Entities1 entity = new Entities1();


                obj = (from t in entity.TicketCategories
                       where t.TicketCategoryId == id
                       select t).ToList();
                foreach (var t in obj)
                {
                    entity.TicketCategories.Remove(t);
                }

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return 1;
        }

        public void Update_Tc(TicketCategory x)
        {
            var obj = new List<TicketCategory>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.TicketCategories
                       where t.TicketCategoryId == x.TicketCategoryId
                       select t).ToList();

                obj[0].TicketCategoryId = x.TicketCategoryId;
                obj[0].TicketCategoryName = x.TicketCategoryName;
                obj[0].TicketDescription = x.TicketDescription;

                entity.SaveChanges();
            }


            catch (Exception e)
            {
                throw (e);

            }
        }
        public List<TicketCategory> SelectAll_Tc()
        {
            var obj = new List<TicketCategory>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.TicketCategories
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        #endregion

        #region News DAL
        public int Add_News(News s)
        {
            try
            {
                Entities1 entity = new Entities1();
                News st = new News()
                {
                    MatchId = s.MatchId,
                    NewsDescription = s.NewsDescription
                };
                entity.News.Add(st);
                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }
            return 1;
        }

        public List<News> Search_News(int id)
        {

            var obj = new List<News>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.News
                       where t.MatchId == id
                       select t).ToList();

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return obj;
        }

        public int Delete_News(int id)
        {
            var obj = new List<News>();
            try
            {
                Entities1 entity = new Entities1();


                obj = (from t in entity.News
                       where t.MatchId == id
                       select t).ToList();
                foreach (var t in obj)
                {
                    entity.News.Remove(t);
                }

                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return 1;
        }

        public void Update_News(News x)
        {
            var obj = new List<News>();
            try
            {

                Entities1 entity = new Entities1();

                obj = (from t in entity.News
                       where t.MatchId == x.MatchId
                       select t).ToList();
                obj[0].NewsDescription = x.NewsDescription;
                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }
        }
        public List<News> SelectAll_News()
        {
            List<News> t = new List<News>();
            try
            {

                Entities1 entity = new Entities1();

                var obj = (from t1 in entity.News
                           select new
                           {
                               t1.MatchId,
                               t1.NewsDescription

                           });

                foreach(var up in obj)
                {
                    t.Add(new News()
                    {
                        MatchId=up.MatchId,
                        NewsDescription=up.NewsDescription
                    });
                }
                entity.SaveChanges();
            }
            catch (Exception e)
            {
                throw (e);

            }

            return t;
        }
        #endregion
    }
}
