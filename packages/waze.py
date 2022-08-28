#from WazeRouteCalculator import WazeRouteCalculator, WRCError
import WazeRouteCalculator
import pprint
import logging


logger = logging.getLogger('WazeRouteCalculator.WazeRouteCalculator')
logger.setLevel(logging.DEBUG)
handler = logging.StreamHandler()
logger.addHandler(handler)

from_address = 'Kapellen, Antwerp, Belgium'
to_address = 'Hoboken, Antwerp, Belgium'
region = 'EU'
route = WazeRouteCalculator.WazeRouteCalculator(from_address, to_address, region, '', True, True, True)
routes = route.calc_all_routes_info(real_time=True)
pprint.pprint(routes)

incl_filter=None
excl_filter=None
if incl_filter is not None:
    routes = {
        k: v
        for k, v in routes.items()
        if incl_filter.lower() in k.lower()
    }

if excl_filter is not None:
    routes = {
        k: v
        for k, v in routes.items()
        if excl_filter.lower() not in k.lower()
    }

pprint.pprint(routes)
