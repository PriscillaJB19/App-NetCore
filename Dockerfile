
ARG VERSION=mcr.microsoft.com/dotnet/aspnet:6.0
FROM $VERSION AS base
WORKDIR /app

ARG EXPPOSE=5260
EXPOSE $EXPPOSE

ENV ASPNETCORE_URLS=http://+:5260

ARG VERSION2=mcr.microsoft.com/dotnet/sdk:6.0
FROM $VERSION AS build
WORKDIR /src
COPY ["app-netcore.csproj", "./"]
RUN dotnet restore "app-netcore.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "app-netcore.csproj" -c Debut -o /app/build

FROM build AS publish
RUN dotnet publish "app-netcore.csproj" -c Debut -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "app-netcore.dll"]

