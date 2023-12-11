.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneRestrictionPolicy"
.end annotation


# static fields
.field public static final COPY_CONTACT_TO_SIM_ALLOWED:Ljava/lang/String; = "isCopyContactToSimAllowed"

.field public static final EXTRA_MESSAGE_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.MESSAGE_ID_INTERNAL"

.field public static final EXTRA_SUB_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SUB_ID_INTERNAL"

.field public static final NAME:Ljava/lang/String; = "PhoneRestrictionPolicy"

.field public static final RCS_ENABLED:Ljava/lang/String; = "isRCSEnabled"

.field public static final URI:Ljava/lang/String; = "content://com.sec.knox.provider2/PhoneRestrictionPolicy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
