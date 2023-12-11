.class public final synthetic Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/MainContentCaptureSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/view/contentcapture/ContentCaptureContext;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/MainContentCaptureSession;IILandroid/view/contentcapture/ContentCaptureContext;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iput p2, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;->f$2:I

    iput-object p4, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;->f$3:Landroid/view/contentcapture/ContentCaptureContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;->f$0:Landroid/view/contentcapture/MainContentCaptureSession;

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;->f$1:I

    iget v2, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;->f$2:I

    iget-object v3, p0, Landroid/view/contentcapture/MainContentCaptureSession$$ExternalSyntheticLambda7;->f$3:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-static {v0, v1, v2, v3}, Landroid/view/contentcapture/MainContentCaptureSession;->$r8$lambda$7G53r3_WCLDAlyfFoc4mduSjcJM(Landroid/view/contentcapture/MainContentCaptureSession;IILandroid/view/contentcapture/ContentCaptureContext;)V

    return-void
.end method
