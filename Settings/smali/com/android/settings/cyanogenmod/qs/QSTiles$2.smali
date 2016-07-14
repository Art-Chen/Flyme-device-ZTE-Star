.class Lcom/android/settings/cyanogenmod/qs/QSTiles$2;
.super Ljava/lang/Object;
.source "QSTiles.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/qs/QSTiles;->addTile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/cyanogenmod/qs/QSTileHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/qs/QSTiles;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/qs/QSTiles;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/qs/QSTiles$2;->this$0:Lcom/android/settings/cyanogenmod/qs/QSTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/cyanogenmod/qs/QSTileHolder;Lcom/android/settings/cyanogenmod/qs/QSTileHolder;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/settings/cyanogenmod/qs/QSTileHolder;
    .param p2, "rhs"    # Lcom/android/settings/cyanogenmod/qs/QSTileHolder;

    .prologue
    .line 183
    iget-object v0, p1, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 180
    check-cast p1, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/cyanogenmod/qs/QSTileHolder;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/cyanogenmod/qs/QSTiles$2;->compare(Lcom/android/settings/cyanogenmod/qs/QSTileHolder;Lcom/android/settings/cyanogenmod/qs/QSTileHolder;)I

    move-result v0

    return v0
.end method
