.class public final Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SemCapabilityInfo"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 1722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1723
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->title:Ljava/lang/String;

    .line 1724
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->description:Ljava/lang/String;

    .line 1725
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1716
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1707
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$SemCapabilityInfo;->title:Ljava/lang/String;

    return-object v0
.end method
