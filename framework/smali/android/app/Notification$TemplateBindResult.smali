.class Landroid/app/Notification$TemplateBindResult;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemplateBindResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$TemplateBindResult$MarginSet;
    }
.end annotation


# instance fields
.field public final mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

.field public final mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

.field mRightIconHeightDp:F

.field mRightIconVisible:Z

.field mRightIconWidthDp:F

.field public final mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 12668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12679
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$TemplateBindResult$MarginSet-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    .line 12687
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$TemplateBindResult$MarginSet-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    .line 12694
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$TemplateBindResult$MarginSet-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$TemplateBindResult-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$TemplateBindResult;-><init>()V

    return-void
.end method


# virtual methods
.method public setRightIconState(ZFFFF)V
    .registers 9
    .param p1, "visible"    # Z
    .param p2, "widthDp"    # F
    .param p3, "heightDp"    # F
    .param p4, "marginEndDpIfVisible"    # F
    .param p5, "expanderSizeDp"    # F

    .line 12698
    iput-boolean p1, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    .line 12699
    iput p2, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconWidthDp:F

    .line 12700
    iput p3, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconHeightDp:F

    .line 12701
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 12702
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    add-float v2, p4, p5

    invoke-virtual {v0, p5, v2}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 12703
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    add-float v2, p4, p5

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 12704
    return-void
.end method
