Sub Spin()
    ' Adapted from http://answers.microsoft.com/en-us/mac/forum/macoffice2011-macpowerpoint/vba-need-help-rotating-an-object-a-specified/d1222a27-5e3a-403b-af67-824a37604bc0?tm=1325495421857
    Dim osld As Slide
    Dim oshp As Shape
    Dim cw As Boolean
    Dim i As Integer
    Dim rot1 As Single
    Dim slideNumber As Integer
    On Error Resume Next
    Err.Clear
    Set osld = ActiveWindow.View.Slide
    Set oshp = ActiveWindow.Selection.ShapeRange(1)
    If Err <> 0 Then
        MsgBox "Looks like no shape is selected!", vbCritical
        Exit Sub
    End If
    rot1 = InputBox("What rotation angle do you want to add? ", "Rotation Angle")
    slideNumber = InputBox("What's the current slide number?", "Slide Number?")
    With oshp
        Set effNew = ActivePresentation.Slides(slideNumber).TimeLine.MainSequence _
        .AddEffect(Shape:=oshp, effectId:=msoAnimEffectRotation)
        Set aniNew = effNew.Behaviors.Add(msoAnimTypeRotation)
        With aniNew.RotationEffect
            .By = rot1
        End With
    End With
End Sub
