using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace LoginDemoServer.DTO
{
    public class Grade
    {
        public string Subject { get; set; }

        public int Score { get; set; }
        public DateTime Date { get; set; }

        public string Email { get; set; }

        public virtual User? EmailNavigation { get; set; }
        public Models.Grade ToModelsGrades()
        {
            return new Models.Grade() { Subject = Subject, Score = Score, Date = Date, Email = Email};
        }

        public Grade(Models.Grade modelGrade)
        {
            this.Subject = modelGrade.Subject;
            this.Score = modelGrade.Score;
            this.Email = modelGrade.Email;
            this.Date = modelGrade.Date;
            //this.EmailNavigation = modelGrade.EmailNavigation;
            //this.UserGrades = modelUser.UserGrades;
        }
    }
    
}
