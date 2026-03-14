.class public Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;
.super Ljava/lang/Object;
.source "RtsGestureConfigDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field public dialog:Landroid/app/Dialog;

.field private dialogView:Landroid/view/View;

.field private isInitializing:Z

.field private pendingIndex:I

.field private pendingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->isInitializing:Z

    return-void
.end method

.method private setupCheckboxes()V
    .locals 4

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->dialogView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0e83

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    const-string v2, "TAP"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v2, "TAP"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    const v1, 0x7f0a0e84

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    const-string v2, "LONG_PRESS"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v2, "LONG_PRESS"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    const v1, 0x7f0a0e85

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    const-string v2, "DOUBLE_TAP"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v2, "DOUBLE_TAP"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    const v1, 0x7f0a0e86

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_4

    const-string v2, "DRAG"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v2, "DRAG"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    const v1, 0x7f0a0e87

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_5

    const-string v2, "PINCH"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v2, "PINCH"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    const v1, 0x7f0a0e89

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_6

    const-string v2, "TWO_FINGER_DRAG"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v2, "TWO_FINGER_DRAG"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_6
    return-void
.end method

.method private showActionDialog(Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->context:Landroid/content/Context;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    :try_start_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-eqz v1, :cond_6

    const v2, 0x7f0d0401

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f14051c

    invoke-direct {v2, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const-string v3, "PINCH"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f0a0e91

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const-string v5, "Scroll Wheel"

    goto :goto_0

    :cond_0
    const-string v5, "Middle Mouse Pan"

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0e94

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const-string v5, "+/- Keys"

    goto :goto_1

    :cond_1
    const-string v5, "WASD Keys"

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0e97

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    const-string v5, "Page Up/Down"

    goto :goto_2

    :cond_2
    const-string v5, "Arrow Keys"

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;)I

    move-result v6

    const v4, 0x7f0a0e92

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v7, 0x0

    if-ne v6, v7, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const v4, 0x7f0a0e95

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_4
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const v4, 0x7f0a0e98

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const v4, 0x7f0a0e90

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;

    const/4 v7, 0x0

    invoke-direct {v5, p0, p1, v7, v2}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0e93

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;

    const/4 v7, 0x1

    invoke-direct {v5, p0, p1, v7, v2}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0e96

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;

    const/4 v7, 0x2

    invoke-direct {v5, p0, p1, v7, v2}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$DismissListener;

    invoke-direct {v9, p0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$DismissListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;)V

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    :cond_6
    return-void
.end method

.method private showActionLabels()V
    .locals 5

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->dialogView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0e88

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "PINCH"

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "PINCH"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scroll Wheel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+/- Keys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page Up/Down"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const v1, 0x7f0a0e8a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "TWO_FINGER_DRAG"

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "TWO_FINGER_DRAG"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Middle Mouse Pan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WASD Keys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Arrow Keys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private showActionMenu(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->showActionDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showPinchPicker()V
    .locals 10

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->context:Landroid/content/Context;

    if-eqz v0, :cond_3

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    if-eqz v1, :cond_3

    const v2, 0x7f0d0401

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f14051c

    invoke-direct {v2, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v3, 0x7f0a0e91

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "Scroll Wheel"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0e94

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "+/- Keys"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0e97

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "Page Up/Down"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "PINCH"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/xj/winemu/mapping/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x0

    const v3, 0x7f0a0e92

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne v6, v7, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v3, 0x7f0a0e95

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v3, 0x7f0a0e98

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const-string v9, "PINCH"

    const v3, 0x7f0a0e90

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v9, v7, v2}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0e93

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;

    const/4 v7, 0x1

    invoke-direct {v4, p0, v9, v7, v2}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0e96

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;

    const/4 v7, 0x2

    invoke-direct {v4, p0, v9, v7, v2}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$DismissListener;

    invoke-direct {v5, p0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$DismissListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;)V

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method private showTwoFingerPicker()V
    .locals 10

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->context:Landroid/content/Context;

    if-eqz v0, :cond_3

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    if-eqz v1, :cond_3

    const v2, 0x7f0d0401

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f14051c

    invoke-direct {v2, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v3, 0x7f0a0e91

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "Middle Mouse Pan"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0e94

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "WASD Keys"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0e97

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "Arrow Keys"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "TWO_FINGER_DRAG"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/xj/winemu/mapping/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x0

    const v3, 0x7f0a0e92

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne v6, v7, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v3, 0x7f0a0e95

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v3, 0x7f0a0e98

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const-string v9, "TWO_FINGER_DRAG"

    const v3, 0x7f0a0e90

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v9, v7, v2}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0e93

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;

    const/4 v7, 0x1

    invoke-direct {v4, p0, v9, v7, v2}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0e96

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;

    const/4 v7, 0x2

    invoke-direct {v4, p0, v9, v7, v2}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PickerOptionClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$DismissListener;

    invoke-direct {v5, p0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$DismissListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;)V

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method


# virtual methods
.method public applyPendingSelectionIfAny()V
    .locals 4

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->pendingKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->pendingIndex:I

    invoke-static {v0, v1}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->setRtsGestureAction(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->updateActionLabelForKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->pendingKey:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->pendingIndex:I

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->isInitializing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->setRtsGestureEnabled(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->showActionDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const/4 v1, 0x0

    return-void
.end method

.method public refreshUI()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->isInitializing:Z

    invoke-direct {p0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->setupCheckboxes()V

    invoke-direct {p0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->showActionLabels()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->isInitializing:Z

    return-void
.end method

.method public setPendingSelection(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->pendingKey:Ljava/lang/String;

    iput p2, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->pendingIndex:I

    return-void
.end method

.method public show()V
    .locals 6

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const v2, 0x7f0d0400

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->dialogView:Landroid/view/View;

    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f14051c

    invoke-direct {v2, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->setupCheckboxes()V

    invoke-direct {p0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->showActionLabels()V

    :try_start_0
    iget-object v3, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->dialogView:Landroid/view/View;

    if-eqz v3, :cond_3

    const v4, 0x7f0a0e8b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$CloseClickListener;

    invoke-direct {v5, p0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$CloseClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v4, 0x7f0a0e8c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v5, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$CloseClickListener;

    invoke-direct {v5, p0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$CloseClickListener;-><init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->isInitializing:Z

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :try_start_1
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_4

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    return-void
.end method

.method public updateActionLabelForKey(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->dialogView:Landroid/view/View;

    if-eqz v0, :cond_5

    const-string v1, "PINCH"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a0e88

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "PINCH"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scroll Wheel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u25bc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+/- Keys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page Up/Down"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, "TWO_FINGER_DRAG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0a0e8a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "TWO_FINGER_DRAG"

    invoke-static {v2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->getRtsGestureAction(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Middle Mouse Pan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WASD Keys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Arrow Keys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u25bc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method
