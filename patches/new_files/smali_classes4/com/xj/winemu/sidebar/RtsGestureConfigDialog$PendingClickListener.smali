.class public Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PendingClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final key:Ljava/lang/String;

.field private final owner:Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;


# direct methods
.method public constructor <init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PendingClickListener;->owner:Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;

    iput-object p2, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PendingClickListener;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PendingClickListener;->owner:Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$PendingClickListener;->key:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1, p2}, Lcom/xj/pcvirtualbtn/inputcontrols/InputControlsManager;->setRtsGestureAction(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->updateActionLabelForKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catch_1
    const/4 v3, 0x0

    return-void
.end method
