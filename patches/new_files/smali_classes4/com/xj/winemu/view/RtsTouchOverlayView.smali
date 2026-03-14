.class public Lcom/xj/winemu/view/RtsTouchOverlayView;
.super Landroid/view/View;
.source "RtsTouchOverlayView.kt"


# instance fields
.field public a:Lcom/winemu/openapi/WinUIBridge;

.field public accumulatedZoom:F

.field public b:Landroid/view/View;

.field public doubleTapCandidate:Z

.field public doubleTapDelivered:Z

.field public downTime:J

.field public dragging:Z

.field public forwardingButtons:Z

.field public initialPinchDistance:F

.field public lastGameX:F

.field public lastGameY:F

.field public lastPinchDistance:F

.field public lastTapTime:J

.field public lastTapX:F

.field public lastTapY:F

.field public lastTouchX:F

.field public lastTouchY:F

.field public panDown:Z

.field public panLeft:Z

.field public panRight:Z

.field public panUp:Z

.field public pinching:Z

.field public startX:F

.field public startY:F

.field public tracking:Z

.field public twoFingerLastX:F

.field public twoFingerLastY:F

.field public twoFingerPanning:Z

.field public twoFingerStartX:F

.field public twoFingerStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTouchX:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTouchY:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastGameX:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastGameY:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->startX:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->startY:F

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->tracking:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->dragging:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerPanning:Z

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerStartX:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerStartY:F

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerLastX:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerLastY:F

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->pinching:Z

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->initialPinchDistance:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastPinchDistance:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->accumulatedZoom:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapX:F

    iput v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->downTime:J

    iput-wide v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapCandidate:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapDelivered:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->forwardingButtons:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-static {}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsTouchControlsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->forwardingButtons:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->b:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->forwardingButtons:Z

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v2, 0x0

    if-eq v0, v2, :cond_5

    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->b:Landroid/view/View;

    if-eqz v2, :cond_6

    instance-of v3, v2, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsView;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    check-cast v2, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsView;

    invoke-virtual {v2, v4, v3}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsView;->w(FF)Lcom/xj/pcvirtualbtn/inputcontrols/ControlElement;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->forwardingButtons:Z

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v9, 0x2

    if-lt v1, v9, :cond_26

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float v5, v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float v6, v3, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v2, 0x5

    if-ne v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseLeftButton()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->tracking:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->dragging:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float v11, v8, v7

    sub-float v0, v10, v9

    mul-float v11, v11, v11

    mul-float v0, v0, v0

    add-float v11, v11, v0

    float-to-double v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v11, v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerPanning:Z

    iput v5, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerStartX:F

    iput v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerStartY:F

    iput v5, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerLastX:F

    iput v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerLastY:F

    const-string v2, "TWO_FINGER_DRAG"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->pressMiddleButton()V

    :cond_7
    iput v11, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->initialPinchDistance:F

    iput v11, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastPinchDistance:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->pinching:Z

    iput v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->accumulatedZoom:F

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    goto/16 :goto_b

    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_23

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerPanning:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->pinching:Z

    if-eqz v2, :cond_37

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float v11, v8, v7

    sub-float v0, v10, v9

    mul-float v11, v11, v11

    mul-float v0, v0, v0

    add-float v11, v11, v0

    float-to-double v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v11, v0

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->pinching:Z

    if-nez v2, :cond_a

    iget v7, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->initialPinchDistance:F

    sub-float v8, v11, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x42480000    # 50.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_11

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->pinching:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerPanning:Z

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->endTwoFingerPan()V

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseMiddleButton()V

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseLeftButton()V

    iput v11, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastPinchDistance:F

    goto/16 :goto_b

    :cond_a
    const-string v0, "PINCH"

    invoke-static {v0}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v7, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastPinchDistance:F

    sub-float v8, v11, v7

    iget v9, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->accumulatedZoom:F

    add-float v9, v9, v8

    iput v9, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->accumulatedZoom:F

    const/high16 v10, 0x40a00000    # 5.0f

    const-string v0, "PINCH"

    invoke-static {v0}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;)I

    move-result v12

    :goto_0
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_10

    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    if-nez v12, :cond_b

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendScrollWheel(I)V

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendScrollWheel(I)V

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendScrollWheel(I)V

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendScrollWheel(I)V

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendScrollWheel(I)V

    goto :goto_1

    :cond_b
    const/4 v1, 0x1

    if-ne v12, v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendPlusMinusKey(I)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendPageUpDownKey(I)V

    :goto_1
    sub-float v9, v9, v10

    goto :goto_3

    :cond_d
    const/4 v0, -0x1

    if-nez v12, :cond_e

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendScrollWheel(I)V

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendScrollWheel(I)V

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendScrollWheel(I)V

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendScrollWheel(I)V

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendScrollWheel(I)V

    goto :goto_2

    :cond_e
    const/4 v1, 0x1

    if-ne v12, v1, :cond_f

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendPlusMinusKey(I)V

    goto :goto_2

    :cond_f
    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->sendPageUpDownKey(I)V

    :goto_2
    add-float v9, v9, v10

    :goto_3
    iput v9, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->accumulatedZoom:F

    goto :goto_0

    :cond_10
    iput v11, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastPinchDistance:F

    goto/16 :goto_b

    :cond_11
    const-string v0, "TWO_FINGER_DRAG"

    invoke-static {v0}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "TWO_FINGER_DRAG"

    invoke-static {v0}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;)I

    move-result v12

    iget v7, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerLastX:F

    sub-float v7, v5, v7

    iget v8, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerLastY:F

    sub-float v8, v6, v8

    if-nez v12, :cond_12

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v7, v7, v0

    mul-float v8, v8, v0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v7, v7, v1

    mul-float v8, v8, v1

    invoke-virtual {p0, v7, v8}, Lcom/xj/winemu/view/RtsTouchOverlayView;->moveCursorBy(FF)V

    goto/16 :goto_6

    :cond_12
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1a

    iget v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerStartX:F

    sub-float v7, v5, v0

    iget v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerStartY:F

    sub-float v8, v6, v0

    const/high16 v10, 0x42480000    # 50.0f

    const/high16 v11, -0x3db80000    # -50.0f

    cmpg-float v2, v7, v11

    if-gez v2, :cond_13

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    if-nez v2, :cond_16

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->pressWasdKey(I)V

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    goto :goto_4

    :cond_13
    cmpl-float v2, v7, v10

    if-lez v2, :cond_14

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    if-nez v2, :cond_16

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->pressWasdKey(I)V

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    goto :goto_4

    :cond_14
    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    :cond_15
    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    :cond_16
    :goto_4
    cmpg-float v2, v8, v11

    if-gez v2, :cond_17

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    if-nez v2, :cond_22

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->pressWasdKey(I)V

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    goto/16 :goto_6

    :cond_17
    cmpl-float v2, v8, v10

    if-lez v2, :cond_18

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    if-nez v2, :cond_22

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->pressWasdKey(I)V

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    goto/16 :goto_6

    :cond_18
    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    :cond_19
    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    goto/16 :goto_6

    :cond_1a
    iget v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerStartX:F

    sub-float v7, v5, v0

    iget v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerStartY:F

    sub-float v8, v6, v0

    const/high16 v10, 0x42480000    # 50.0f

    const/high16 v11, -0x3db80000    # -50.0f

    cmpg-float v2, v7, v11

    if-gez v2, :cond_1b

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->pressArrowKey(I)V

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    goto :goto_5

    :cond_1b
    cmpl-float v2, v7, v10

    if-lez v2, :cond_1c

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->pressArrowKey(I)V

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    goto :goto_5

    :cond_1c
    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    :cond_1d
    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    :cond_1e
    :goto_5
    cmpg-float v2, v8, v11

    if-gez v2, :cond_1f

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    if-nez v2, :cond_37

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->pressArrowKey(I)V

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    if-eqz v2, :cond_37

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    goto/16 :goto_b

    :cond_1f
    cmpl-float v2, v8, v10

    if-lez v2, :cond_20

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    if-nez v2, :cond_37

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->pressArrowKey(I)V

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    if-eqz v2, :cond_37

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    goto/16 :goto_b

    :cond_20
    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    :cond_21
    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    :cond_22
    :goto_6
    iput v5, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerLastX:F

    iput v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerLastY:F

    goto/16 :goto_b

    :cond_23
    const/4 v2, 0x6

    if-ne v0, v2, :cond_37

    const-string v2, "TWO_FINGER_DRAG"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseMiddleButton()V

    goto :goto_7

    :cond_24
    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->endWasdPan()V

    goto :goto_7

    :cond_25
    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->endTwoFingerPan()V

    :goto_7
    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseLeftButton()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->pinching:Z

    iput v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->accumulatedZoom:F

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerPanning:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    goto/16 :goto_b

    :cond_26
    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerPanning:Z

    if-nez v2, :cond_27

    iget-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->pinching:Z

    if-eqz v2, :cond_2a

    :cond_27
    const-string v2, "TWO_FINGER_DRAG"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseMiddleButton()V

    goto :goto_8

    :cond_28
    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->endWasdPan()V

    goto :goto_8

    :cond_29
    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->endTwoFingerPan()V

    :goto_8
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->pinching:Z

    iput v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->accumulatedZoom:F

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerPanning:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    iput-boolean v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    goto/16 :goto_b

    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    if-nez v0, :cond_2e

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->tracking:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->dragging:Z

    iput v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTouchX:F

    iput v3, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTouchY:F

    iput v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->startX:F

    iput v3, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->startY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->downTime:J

    iget-wide v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapTime:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_2b

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapCandidate:Z

    iput-boolean v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapDelivered:Z

    goto :goto_9

    :cond_2b
    sub-long/2addr v4, v6

    const-wide/16 v8, 0xfa

    cmp-long v10, v4, v8

    if-gez v10, :cond_2c

    iget v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapX:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapY:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x42480000    # 50.0f

    cmpg-float v9, v6, v8

    if-gtz v9, :cond_2c

    cmpg-float v6, v7, v8

    if-gtz v6, :cond_2c

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapCandidate:Z

    iput-boolean v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapDelivered:Z

    goto :goto_9

    :cond_2c
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapCandidate:Z

    iput-boolean v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapDelivered:Z

    :goto_9
    invoke-virtual {p0, v2, v3}, Lcom/xj/winemu/view/RtsTouchOverlayView;->warpCursorTo(FF)V

    iget-boolean v10, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapCandidate:Z

    if-eqz v10, :cond_2d

    iget-boolean v10, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapDelivered:Z

    if-eqz v10, :cond_2d

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->doClick()V

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->doClick()V

    goto/16 :goto_b

    :cond_2d
    goto/16 :goto_b

    :cond_2e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    iget-boolean v1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->tracking:Z

    if-eqz v1, :cond_37

    iget v4, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTouchX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTouchY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v7, v4, v6

    if-gtz v7, :cond_2f

    cmpg-float v7, v5, v6

    if-lez v7, :cond_37

    :cond_2f
    iput v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTouchX:F

    iput v3, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTouchY:F

    iget-boolean v4, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->dragging:Z

    if-nez v4, :cond_31

    iget v4, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->startX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->startY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v7, v4, v6

    if-gtz v7, :cond_30

    cmpg-float v7, v5, v6

    if-lez v7, :cond_31

    :cond_30
    const-string v4, "DRAG"

    invoke-static {v4}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->dragging:Z

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->pressLeftButton()V

    :cond_31
    invoke-virtual {p0, v2, v3}, Lcom/xj/winemu/view/RtsTouchOverlayView;->warpCursorTo(FF)V

    goto :goto_b

    :cond_32
    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    iget-boolean v4, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->tracking:Z

    if-eqz v4, :cond_36

    iget-boolean v4, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->dragging:Z

    if-eqz v4, :cond_33

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseLeftButton()V

    goto :goto_a

    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->downTime:J

    sub-long/2addr v4, v6

    iget-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapCandidate:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapDelivered:Z

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseLeftButton()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapCandidate:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapDelivered:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapTime:J

    iput v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapX:F

    iput v3, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapY:F

    goto :goto_a

    :cond_34
    const-wide/16 v6, 0x12c

    cmp-long v0, v4, v6

    if-ltz v0, :cond_35

    const-string v0, "LONG_PRESS"

    invoke-static {v0}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->doRightClick()V

    goto :goto_a

    :cond_35
    const-string v0, "TAP"

    invoke-static {v0}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->doClick()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapTime:J

    iput v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapX:F

    iput v3, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTapY:F

    goto :goto_a

    :cond_36
    :goto_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->tracking:Z

    iput-boolean v1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->dragging:Z

    iput-boolean v1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapCandidate:Z

    iput-boolean v1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->doubleTapDelivered:Z

    :cond_37
    :goto_b
    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->b:Landroid/view/View;

    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method public doClick()V
    .locals 8

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTouchX:F

    iget v2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastTouchY:F

    invoke-virtual {p0, v1, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->warpCursorTo(FF)V

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v4, v1, v3

    add-float v5, v2, v3

    invoke-virtual {p0, v4, v5}, Lcom/xj/winemu/view/RtsTouchOverlayView;->warpCursorTo(FF)V

    invoke-virtual {p0, v1, v2}, Lcom/xj/winemu/view/RtsTouchOverlayView;->warpCursorTo(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    :cond_0
    return-void
.end method

.method public doRightClick()V
    .locals 6

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    :cond_0
    return-void
.end method

.method public endTwoFingerPan()V
    .locals 2

    iget-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseArrowKey(I)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->twoFingerPanning:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    iput-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    return-void
.end method

.method public endWasdPan()V
    .locals 2

    iget-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panLeft:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panRight:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panUp:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->panDown:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xj/winemu/view/RtsTouchOverlayView;->releaseWasdKey(I)V

    :cond_3
    return-void
.end method

.method public moveCursorBy(FF)V
    .locals 6

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_0

    move v1, p1

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    :cond_0
    return-void
.end method

.method public pressArrowKey(I)V
    .locals 4

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/16 p1, 0x16

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/16 p1, 0x13

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const/16 p1, 0x14

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/winemu/core/controller/X11Controller;->p(IIZ)V

    :cond_3
    return-void
.end method

.method public pressLeftButton()V
    .locals 6

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    :cond_0
    return-void
.end method

.method public pressMiddleButton()V
    .locals 6

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    :cond_0
    return-void
.end method

.method public pressWasdKey(I)V
    .locals 4

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x1d

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/16 p1, 0x33

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const/16 p1, 0x2f

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/winemu/core/controller/X11Controller;->p(IIZ)V

    :cond_3
    return-void
.end method

.method public releaseArrowKey(I)V
    .locals 4

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/16 p1, 0x16

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/16 p1, 0x13

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const/16 p1, 0x14

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/winemu/core/controller/X11Controller;->p(IIZ)V

    :cond_3
    return-void
.end method

.method public releaseLeftButton()V
    .locals 6

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    :cond_0
    return-void
.end method

.method public releaseMiddleButton()V
    .locals 6

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    :cond_0
    return-void
.end method

.method public releaseWasdKey(I)V
    .locals 4

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x1d

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/16 p1, 0x33

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const/16 p1, 0x2f

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/winemu/core/controller/X11Controller;->p(IIZ)V

    :cond_3
    return-void
.end method

.method public sendPageUpDownKey(I)V
    .locals 4

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 v2, 0x5d

    goto :goto_0

    :cond_0
    const/16 v2, 0x5c

    :goto_0
    const/4 v3, 0x0

    const/4 p1, 0x1

    invoke-virtual {v1, v3, v2, p1}, Lcom/winemu/core/controller/X11Controller;->p(IIZ)V

    const/4 p1, 0x0

    invoke-virtual {v1, v3, v2, p1}, Lcom/winemu/core/controller/X11Controller;->p(IIZ)V

    :cond_1
    return-void
.end method

.method public sendPlusMinusKey(I)V
    .locals 4

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 v2, 0x9d

    goto :goto_0

    :cond_0
    const/16 v2, 0x45

    :goto_0
    const/4 v3, 0x0

    const/4 p1, 0x1

    invoke-virtual {v1, v3, v2, p1}, Lcom/winemu/core/controller/X11Controller;->p(IIZ)V

    const/4 p1, 0x0

    invoke-virtual {v1, v3, v2, p1}, Lcom/winemu/core/controller/X11Controller;->p(IIZ)V

    :cond_1
    return-void
.end method

.method public sendScrollWheel(I)V
    .locals 6

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_0

    int-to-float v1, p1

    const/high16 v2, -0x40000000    # -2.0f

    mul-float v2, v1, v2

    const/4 v1, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    :cond_0
    return-void
.end method

.method public setButtonsView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->b:Landroid/view/View;

    return-void
.end method

.method public setWinUIBridge(Lcom/winemu/openapi/WinUIBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    return-void
.end method

.method public touchToGameCoords(FF)[F
    .locals 12

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/winemu/core/controller/X11Controller;->a:Lcom/winemu/ui/X11View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/winemu/ui/X11View;->getScreenSize()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    cmpg-float v11, v8, v10

    if-lez v11, :cond_0

    cmpg-float v11, v9, v10

    if-lez v11, :cond_0

    sub-float p1, p1, v6

    sub-float p2, p2, v7

    div-float v10, v4, v8

    div-float v11, v5, v9

    mul-float p1, p1, v10

    mul-float p2, p2, v11

    const/4 v6, 0x0

    invoke-static {p1, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, v6}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public warpCursorTo(FF)V
    .locals 12

    iget-object v0, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->a:Lcom/winemu/openapi/WinUIBridge;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/winemu/openapi/WinUIBridge;->k:Lcom/winemu/core/controller/X11Controller;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/winemu/core/controller/X11Controller;->a:Lcom/winemu/ui/X11View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/winemu/ui/X11View;->getScreenSize()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    cmpg-float v11, v8, v10

    if-lez v11, :cond_0

    cmpg-float v11, v9, v10

    if-lez v11, :cond_0

    sub-float p1, p1, v6

    sub-float p2, p2, v7

    div-float v10, v4, v8

    div-float v11, v5, v9

    mul-float p1, p1, v10

    mul-float p2, p2, v11

    const/4 v6, 0x0

    invoke-static {p1, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, v6}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p1, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastGameX:F

    iput p2, p0, Lcom/xj/winemu/view/RtsTouchOverlayView;->lastGameY:F

    :cond_0
    move v1, p1

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/winemu/openapi/WinUIBridge;->c0(FFIZZ)V

    :cond_1
    return-void
.end method
