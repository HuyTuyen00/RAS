using System;
using System.Linq;
using HakunaMatata.Data;
using HakunaMatata.Models.DataModels;
using HakunaMatata.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Exception = System.Exception;

namespace HakunaMatata.Controllers
{
    public class RatingController : Controller
    {
        private readonly HakunaMatataContext _context;

        public RatingController(HakunaMatataContext context)
        {
            _context = context;
        }

        public ActionResult UpdateRatingStart(RatingUpdateModel model)
        {
            try
            {
                var userIdClaim = User.Claims.FirstOrDefault(c => c.Type == "UserId");

                if (userIdClaim == null)
                {
                    return Json(new
                    {
                        IsSuccess = false,
                        Message = "User not login yet"
                    });
                }

                var userId = Convert.ToInt32(userIdClaim.Value);

                if (!ModelState.IsValid)
                {
                    return Json(new
                    {
                        IsSuccess = false,
                        Message = "Model invalid"
                    });
                }

                var currentRating =
                    _context.Ratings.FirstOrDefault(s => s.RealEstateId == model.RealEstateId && s.AgentId == userId);

                if (currentRating == null)
                {
                    _context.Ratings.Add(new Rating()
                    {
                        AgentId = userId,
                        StarPoint = model.StarPoint,
                        RealEstateId = model.RealEstateId,
                    });

                    var result = _context.SaveChanges();
                }
                else
                {
                    currentRating.StarPoint = model.StarPoint;

                    _context.SaveChanges();
                }

                return Json(new
                {
                    IsSuccess = true,
                    Message = "Saved successfully!"
                });
            }
            catch (Exception e)
            {
                return Json(new
                {
                    IsSuccess = false,
                    Message = "Error occurred: " + e.Message
                });
            }
        }


        public ActionResult GetRatingStart(RatingFilterModel model)
        {
            try
            {
                var userIdClaim = User.Claims.FirstOrDefault(c => c.Type == "UserId");

                if (userIdClaim == null)
                {
                    return Json(new
                    {
                        IsSuccess = false,
                        Message = "User not login yet"
                    });
                }

                var userId = Convert.ToInt32(userIdClaim.Value);

                if (!ModelState.IsValid)
                {
                    return Json(new
                    {
                        IsSuccess = false,
                        Message = "Model invalid"
                    });
                }

                var currentRating = _context.Ratings.FirstOrDefault(s => s.RealEstateId == model.RealEstateId && s.AgentId == userId);

                return Json(new
                {
                    IsSuccess = true,
                    Message = "Get Successfully!",
                    Data = currentRating == null ? 0 : currentRating.StarPoint
                });
            }
            catch (Exception e)
            {
                return Json(new
                {
                    IsSuccess = false,
                    Message = "Error occurred: " + e.Message,
                    Data = 0
                });
            }
        }


        public ActionResult GetAverageStarPoint(RatingFilterModel model)
        {
            try
            {
                var averageStarPoint = _context.Ratings
                    .Where(r => r.RealEstateId == model.RealEstateId)
                    .Average(r => r.StarPoint);

                return Json(new
                {
                    IsSuccess = true,
                    Message = "Get Successfully!",
                    Data = averageStarPoint
                });
            }
            catch (Exception e)
            {
                return Json(new
                {
                    IsSuccess = false,
                    Message = "User not login yet",
                    Data = 0
                });
            }
        }
    }
}