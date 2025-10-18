## Hazelcast

Issue #1 ==> Running SpringBoot Application in Windows
    Error ==> java.net.SocketException: Invalid argument: setsockopt
    Fix ==> -Djava.net.preferIPv4Stack=true


Issue #2 ==> Hazelcast Config
    Error ==> Hazelcast Config

    	new Config().setInstnaceName(hzcInstanceName)
    				.addMapConfig(
    					new MapConfig()
    						.setName(mapName)
    						.setEvictionConfig()
    							.setSize(mapMaxSize)
    							.setMaxSizePolicy(MaxSizePolicy.PER_NODE)
    							.setEvictionPolicy(EvictionPolicy.LRU))
    						.setTimeToLiveSeconds(liveTime)
    						.setBackupCount(0).setAsyncBackupCount(0)));

Issue #3 ==> Hazelcast Cache will never expiry
    Error ==> Hazelcast Cache will never expiry
    Fix ==> Set Default map with max size & time

    	DEFAULT_MAP_NAME = "default";
    	MAP_MAX_SIZE = 5000;

    	new Config().setInstnaceName(hzcInstanceName)
    				.addMapConfig(
    					new MapConfig()
    						.setName(mapName)
    						.setEvictionConfig()
    							.setSize(mapMaxSize)
    							.setMaxSizePolicy(MaxSizePolicy.PER_NODE)
    							.setEvictionPolicy(EvictionPolicy.LRU))
    						.setTimeToLiveSeconds(liveTime)
    						.setBackupCount(0).setAsyncBackupCount(0)));

