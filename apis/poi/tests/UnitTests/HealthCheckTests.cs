using poi.Models;
using Xunit;

namespace UnitTests
{
    public class HealthCheckUnitTests
    {
        [Fact]
        public void HealthCheckTestModel()
        {
            Assert.Equal("POI Service Healthcheck Team 6 awsome", new Healthcheck().Message);
            Assert.Equal("Awful Healthy!!!!!!", new Healthcheck().Status);

        }
    }
}
