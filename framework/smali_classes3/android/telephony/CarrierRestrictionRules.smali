.class public final Landroid/telephony/CarrierRestrictionRules;
.super Ljava/lang/Object;
.source "CarrierRestrictionRules.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierRestrictionRules$Builder;,
        Landroid/telephony/CarrierRestrictionRules$CarrierRestrictionDefault;,
        Landroid/telephony/CarrierRestrictionRules$MultiSimPolicy;
    }
.end annotation


# static fields
.field public static final CARRIER_RESTRICTION_DEFAULT_ALLOWED:I = 0x1

.field public static final CARRIER_RESTRICTION_DEFAULT_NOT_ALLOWED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CarrierRestrictionRules;",
            ">;"
        }
    .end annotation
.end field

.field public static final MULTISIM_POLICY_NONE:I = 0x0

.field public static final MULTISIM_POLICY_ONE_VALID_SIM_MUST_BE_PRESENT:I = 0x1

.field private static final WILD_CHARACTER:C = '?'


# instance fields
.field private mAllowedCarriers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private mCarrierRestrictionDefault:I

.field private mCarrierRestrictionStatus:I

.field private mExcludedCarriers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSimPolicy:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCarrierRestrictionDefault(Landroid/telephony/CarrierRestrictionRules;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCarrierRestrictionStatus(Landroid/telephony/CarrierRestrictionRules;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmExcludedCarriers(Landroid/telephony/CarrierRestrictionRules;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMultiSimPolicy(Landroid/telephony/CarrierRestrictionRules;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 324
    new-instance v0, Landroid/telephony/CarrierRestrictionRules$1;

    invoke-direct {v0}, Landroid/telephony/CarrierRestrictionRules$1;-><init>()V

    sput-object v0, Landroid/telephony/CarrierRestrictionRules;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    .line 114
    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    .line 115
    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    .line 122
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    sget-object v1, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 123
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    sget-object v1, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CarrierRestrictionRules-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CarrierRestrictionRules;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/CarrierRestrictionRules-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CarrierRestrictionRules;-><init>()V

    return-void
.end method

.method private static convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 268
    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isCarrierIdInList(Landroid/service/carrier/CarrierIdentifier;Ljava/util/List;)Z
    .registers 9
    .param p0, "id"    # Landroid/service/carrier/CarrierIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/carrier/CarrierIdentifier;",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)Z"
        }
    .end annotation

    .line 217
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/carrier/CarrierIdentifier;

    .line 219
    .local v1, "listItem":Landroid/service/carrier/CarrierIdentifier;
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 221
    goto :goto_4

    .line 226
    :cond_2e
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "listItemValue":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "idValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 229
    invoke-static {v4, v3}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 230
    goto :goto_4

    .line 235
    :cond_4b
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    nop

    .line 238
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-static {v5, v3}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 240
    goto :goto_4

    .line 244
    :cond_73
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    nop

    .line 247
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 246
    invoke-static {v5, v3}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9c

    .line 249
    goto/16 :goto_4

    .line 253
    :cond_9c
    invoke-virtual {v1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {p0}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/CarrierRestrictionRules;->convertNullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    nop

    .line 256
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {v2, v3}, Landroid/telephony/CarrierRestrictionRules;->patternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c5

    .line 258
    goto/16 :goto_4

    .line 262
    :cond_c5
    const/4 v0, 0x1

    return v0

    .line 264
    .end local v1    # "listItem":Landroid/service/carrier/CarrierIdentifier;
    .end local v3    # "listItemValue":Ljava/lang/String;
    .end local v4    # "idValue":Ljava/lang/String;
    :cond_c7
    return v2
.end method

.method static synthetic lambda$areCarrierIdentifiersAllowed$0(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x"    # Ljava/lang/Boolean;

    .line 203
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;
    .registers 1

    .line 134
    new-instance v0, Landroid/telephony/CarrierRestrictionRules$Builder;

    invoke-direct {v0}, Landroid/telephony/CarrierRestrictionRules$Builder;-><init>()V

    return-object v0
.end method

.method private static patternMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 282
    return v2

    .line 284
    :cond_c
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "lowerCaseStr":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "lowerCasePattern":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_32

    .line 289
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_32

    .line 290
    return v2

    .line 287
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 293
    .end local v3    # "i":I
    :cond_35
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public areCarrierIdentifiersAllowed(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 187
    .local p1, "carrierIds":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4b

    .line 191
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/carrier/CarrierIdentifier;

    iget-object v4, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    invoke-static {v2, v4}, Landroid/telephony/CarrierRestrictionRules;->isCarrierIdInList(Landroid/service/carrier/CarrierIdentifier;Ljava/util/List;)Z

    move-result v2

    .line 192
    .local v2, "inAllowedList":Z
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/carrier/CarrierIdentifier;

    iget-object v5, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    invoke-static {v4, v5}, Landroid/telephony/CarrierRestrictionRules;->isCarrierIdInList(Landroid/service/carrier/CarrierIdentifier;Ljava/util/List;)Z

    move-result v4

    .line 193
    .local v4, "inExcludedList":Z
    iget v5, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    const/4 v6, 0x0

    if-nez v5, :cond_3c

    .line 194
    if-eqz v2, :cond_33

    if-nez v4, :cond_33

    goto :goto_34

    :cond_33
    move v3, v6

    :goto_34
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 196
    :cond_3c
    if-eqz v4, :cond_41

    if-nez v2, :cond_41

    move v3, v6

    :cond_41
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v2    # "inAllowedList":Z
    .end local v4    # "inExcludedList":Z
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 200
    .end local v1    # "i":I
    :cond_4b
    iget v1, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    if-ne v1, v3, :cond_6f

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 202
    .local v2, "b":Z
    if-eqz v2, :cond_6e

    .line 203
    new-instance v1, Landroid/telephony/CarrierRestrictionRules$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/CarrierRestrictionRules$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 204
    goto :goto_6f

    .line 206
    .end local v2    # "b":Z
    :cond_6e
    goto :goto_53

    .line 208
    :cond_6f
    :goto_6f
    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowedCarriers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    return-object v0
.end method

.method public getCarrierRestrictionStatus()I
    .registers 2

    .line 298
    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    return v0
.end method

.method public getDefaultCarrierRestriction()I
    .registers 2

    .line 167
    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    return v0
.end method

.method public getExcludedCarriers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    return-object v0
.end method

.method public getMultiSimPolicy()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    return v0
.end method

.method public isAllCarriersAllowed()Z
    .registers 3

    .line 141
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierRestrictionRules(allowed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", excluded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", default:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", multisim policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 306
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mAllowedCarriers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 307
    iget-object v0, p0, Landroid/telephony/CarrierRestrictionRules;->mExcludedCarriers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 308
    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionDefault:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mMultiSimPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v0, p0, Landroid/telephony/CarrierRestrictionRules;->mCarrierRestrictionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    return-void
.end method
