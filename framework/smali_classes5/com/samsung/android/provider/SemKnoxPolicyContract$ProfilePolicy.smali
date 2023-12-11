.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$ProfilePolicy;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfilePolicy"
.end annotation


# static fields
.field public static final KNOX_PROFILE_POLICY_UPDATE:Ljava/lang/String; = "com.samsung.android.knox.profilepolicy.intent.action.update"

.field public static final NAME:Ljava/lang/String; = "ProfilePolicy"

.field public static final RESTRICTION:Ljava/lang/String; = "Restriction"

.field public static final RESTRICTION_PROPERTY_CALENDAR_SHARE_TO_OWNER:Ljava/lang/String; = "restriction_property_calendar_share_to_owner"

.field public static final URI:Ljava/lang/String; = "content://com.sec.knox.provider/ProfilePolicy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
