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

