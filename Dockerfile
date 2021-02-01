FROM mcr.microsoft.com/dotnet/aspnet:5.0

# Set /app as the working directory
WORKDIR /app

# export app port
EXPOSE 80

# Copy dotnet publish output to working directory
COPY out /app

# Run the compiled code to launch applciation
ENTRYPOINT ["dotnet", "myWebApp.dll"]
