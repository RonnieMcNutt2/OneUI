.class public final synthetic Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/om/OverlayManagerExt;

.field public final synthetic f$1:Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/content/om/OverlayManagerExt;Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda3;->f$0:Landroid/content/om/OverlayManagerExt;

    iput-object p2, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda3;->f$1:Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda3;->f$0:Landroid/content/om/OverlayManagerExt;

    iget-object v1, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda3;->f$1:Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/content/om/OverlayManagerExt;->$r8$lambda$iEAc3Ncujw4XySDN5yDyoj58nUQ(Landroid/content/om/OverlayManagerExt;Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;Ljava/lang/String;)Landroid/content/om/OverlayInfoExt;

    move-result-object p1

    return-object p1
.end method
