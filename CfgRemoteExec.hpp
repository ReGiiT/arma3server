class CfgRemoteExec
{
	class Functions
	{
		mode = 1;
		jip = 0;

		class ExileServer_system_network_dispatchIncomingMessage { allowedTargets=2; };	// ExileMod
		class ExAdServer_fnc_clientRequest { allowedTargets=2; };
	};
	class Commands
	{
		mode=0;
		jip=0;
	};
};