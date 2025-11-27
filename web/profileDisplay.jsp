<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>${profileName}'s Profile</title>
    <style>
        body { font-family: 'Roboto', sans-serif; background-color: #e6f7ff; color: #333; margin: 0; padding: 20px;}
        .profile-card { max-width: 800px; margin: 30px auto; background: #ffffff; padding: 40px; border-radius: 18px; box-shadow: 0 10px 25px rgba(0,0,0,0.2); border: 1px solid #ddd;}
        h1 { color: #0056b3; text-align: center; margin-bottom: 5px; border-bottom: 3px solid #0056b3; padding-bottom: 10px; }
        .subtitle { text-align: center; color: #6c757d; margin-bottom: 30px; font-style: italic; }
        .data-item { margin-bottom: 15px; padding: 10px 0; display: flex; align-items: baseline; }
        .data-label { font-weight: bold; color: #1e3c72; width: 180px; flex-shrink: 0; }
        .data-value { color: #333; flex-grow: 1; border-left: 3px solid #ffc107; padding-left: 15px; }
        .intro-box { background-color: #f8f9fa; padding: 20px; border-radius: 10px; border: 1px dashed #ced4da; margin-top: 25px;}
        .intro-box .data-label { width: auto; display: block; margin-bottom: 10px; font-size: 1.1em;}
        .intro-box p { margin: 0; white-space: pre-wrap; color: #555; }
    </style>
</head>
<body>

<div class="profile-card">
    <h1>Profile for ${profileName}</h1>

    <div class="data-item">
        <span class="data-label">Student Name:</span> 
        <span class="data-value">${profileName}</span>
    </div>
    
    <div class="data-item">
        <span class="data-label">Student ID:</span> 
        <span class="data-value">${profileId}</span>
    </div>
    
    <div class="data-item">
        <span class="data-label">Program:</span> 
        <span class="data-value">${profileProgram}</span>
    </div>
    
    <div class="data-item">
        <span class="data-label">Email:</span> 
        <span class="data-value">${profileEmail}</span>
    </div>
    
    <div class="data-item">
        <span class="data-label">Hobbies:</span> 
        <span class="data-value">${profileHobbies}</span>
    </div>
    
    <div class="intro-box">
        <span class="data-label">Self-Introduction:</span>
        <p>${profileIntro}</p>
    </div>
    
</div>

</body>
</html>
