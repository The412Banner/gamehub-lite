.class public final synthetic Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapp/revanced/extension/gamehub/ComponentManagerActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda1;->f$0:Lapp/revanced/extension/gamehub/ComponentManagerActivity;

    iput-object p2, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda1;->f$0:Lapp/revanced/extension/gamehub/ComponentManagerActivity;

    iget-object p0, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->lambda$onActivityResult$3$app-revanced-extension-gamehub-ComponentManagerActivity(Ljava/lang/String;)V

    return-void
.end method
