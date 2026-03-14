.class public final synthetic Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/revanced/extension/gamehub/ComponentManagerActivity;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;->f$0:Lapp/revanced/extension/gamehub/ComponentManagerActivity;

    iput-object p2, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;->f$2:Ljava/io/File;

    iput-object p4, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;->f$4:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;->f$0:Lapp/revanced/extension/gamehub/ComponentManagerActivity;

    iget-object v1, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;->f$2:Ljava/io/File;

    iget-object v3, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;->f$4:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->lambda$onActivityResult$4$app-revanced-extension-gamehub-ComponentManagerActivity(Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method
