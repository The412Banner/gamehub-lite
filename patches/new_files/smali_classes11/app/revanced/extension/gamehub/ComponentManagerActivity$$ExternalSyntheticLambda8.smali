.class public final synthetic Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lapp/revanced/extension/gamehub/ComponentManagerActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda8;->f$0:Lapp/revanced/extension/gamehub/ComponentManagerActivity;

    iput-object p2, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 0
    iget-object v0, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda8;->f$0:Lapp/revanced/extension/gamehub/ComponentManagerActivity;

    iget-object v1, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->lambda$showComponents$0$app-revanced-extension-gamehub-ComponentManagerActivity(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
