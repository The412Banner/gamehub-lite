.class public Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$WidgetPopupDismissListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# instance fields
.field private final owner:Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;


# direct methods
.method public constructor <init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$WidgetPopupDismissListener;->owner:Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$WidgetPopupDismissListener;->owner:Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;

    invoke-virtual {v0}, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->applyPendingSelectionIfAny()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v1, 0x0

    return-void
.end method
