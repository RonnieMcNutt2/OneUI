.class public Lcom/samsung/android/service/EngineeringMode/token/ModeItem;
.super Ljava/lang/Object;
.source "ModeItem.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mGroupIndex:I

.field private mIndex:I

.field private mModeAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "mIndex"    # I
    .param p2, "nName"    # Ljava/lang/String;
    .param p3, "mDescription"    # Ljava/lang/String;
    .param p4, "mGroupIndex"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mModeAttribute:Ljava/util/ArrayList;

    .line 18
    iput p1, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mIndex:I

    .line 19
    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mDescription:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mGroupIndex:I

    .line 22
    return-void
.end method


# virtual methods
.method public getAttribute(I)Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;
    .registers 3
    .param p1, "index"    # I

    .line 45
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mModeAttribute:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;

    return-object v0
.end method

.method public getAttributeInfoNum()I
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mModeAttribute:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIndex()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mGroupIndex:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public pushAttribute(II[B)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "len"    # I
    .param p3, "attribute"    # [B

    .line 41
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/ModeItem;->mModeAttribute:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/AttributeInfo;-><init>(II[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method
