.class public Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$CloseClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;


# direct methods
.method public constructor <init>(Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$CloseClickListener;->this$0:Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog$CloseClickListener;->this$0:Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xj/winemu/sidebar/RtsGestureConfigDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
