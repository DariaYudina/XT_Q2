﻿using Epam.WebPages.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Epam.WebPages.AbsractBLL
{
    public interface IBLLUser
    {
        bool AddUser(string name, DateTime birthDate);
        void AddUser(User user);
        bool AddAward(Guid userId, Award award);
        bool AddAwards(Guid userId, List<Award> awards);
        bool DeleteUser(Guid id);
        bool DeleteAward(Guid userId, Guid awardid);
        void DeleteUsersAward(Guid awardId);
        IEnumerable<User> GetAllUsers();
    }
}