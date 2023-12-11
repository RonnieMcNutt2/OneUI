.class public final Landroid/app/admin/ManagedSubscriptionsPolicy;
.super Ljava/lang/Object;
.source "ManagedSubscriptionsPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ManagedSubscriptionsPolicy$ManagedSubscriptionsPolicyType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/ManagedSubscriptionsPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_POLICY_TYPE:Ljava/lang/String; = "policy_type"

.field private static final TAG:Ljava/lang/String; = "ManagedSubscriptionsPolicy"

.field public static final TYPE_ALL_MANAGED_SUBSCRIPTIONS:I = 0x1

.field public static final TYPE_ALL_PERSONAL_SUBSCRIPTIONS:I


# instance fields
.field private final mPolicyType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Landroid/app/admin/ManagedSubscriptionsPolicy$1;

    invoke-direct {v0}, Landroid/app/admin/ManagedSubscriptionsPolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/ManagedSubscriptionsPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "policyType"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 72
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid policy type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_11
    :goto_11
    iput p1, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    .line 75
    return-void
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ManagedSubscriptionsPolicy;
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 139
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/app/admin/ManagedSubscriptionsPolicy;

    const-string/jumbo v2, "policy_type"

    .line 140
    const/4 v3, -0x1

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/admin/ManagedSubscriptionsPolicy;-><init>(I)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_e} :catch_10

    move-object v0, v1

    .line 142
    .local v0, "policy":Landroid/app/admin/ManagedSubscriptionsPolicy;
    return-object v0

    .line 143
    .end local v0    # "policy":Landroid/app/admin/ManagedSubscriptionsPolicy;
    :catch_10
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ManagedSubscriptionsPolicy"

    const-string v3, "Load xml failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 121
    return v0

    .line 123
    :cond_4
    instance-of v1, p1, Landroid/app/admin/ManagedSubscriptionsPolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 124
    return v2

    .line 126
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 127
    .local v1, "that":Landroid/app/admin/ManagedSubscriptionsPolicy;
    iget v3, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    iget v4, v1, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    if-ne v3, v4, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public getPolicyType()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const-string/jumbo v0, "policy_type"

    iget v1, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 105
    iget v0, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ManagedSubscriptionsPolicy (type: %d)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget v0, p0, Landroid/app/admin/ManagedSubscriptionsPolicy;->mPolicyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method
