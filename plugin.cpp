#include <RE/Skyrim.h>
#include <SkyrimScripting/Entrypoint.h>

SKSEPlugin_Init {
    SKSE::GetMessagingInterface()->RegisterListener([](SKSE::MessagingInterface::Message* msg) {
        if (msg->type == SKSE::MessagingInterface::kDataLoaded)
            if (auto* consoleLog = RE::ConsoleLog::GetSingleton())
                consoleLog->Print("Hello from Example using SkyrimScripting.Entrypoint!");
    });
}
