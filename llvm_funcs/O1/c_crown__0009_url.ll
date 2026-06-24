; ModuleID = 'llvm/c_crown/0009_url/decode_reprocessed.c'
source_filename = "llvm/c_crown/0009_url/decode_reprocessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"aaa\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"javascript\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"jdbc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"doi\00", align 1
@URL_SCHEMES = dso_local local_unnamed_addr global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%[^://]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%[^@]\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%[^:]\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%[^/]\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"http://user:pass@subdomain.host.com:8080/p/a/t/h?query=string#hash\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"/p/a/t/h?query=string#hash\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"0 == strcmp(\22/p/a/t/h?query=string#hash\22, url_get_path(url))\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"llvm/c_crown/0009_url/decode_reprocessed.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: nofree nounwind readonly uwtable
define dso_local zeroext i1 @url_is_protocol(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 0), align 16, !tbaa !5
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(1) %0) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %9
  %6 = phi i64 [ %7, %9 ], [ 0, %1 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %14, label %9, !llvm.loop !9

9:                                                ; preds = %5
  %10 = getelementptr inbounds [4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 %7
  %11 = load i8*, i8** %10, align 8, !tbaa !5
  %12 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(1) %0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !9

14:                                               ; preds = %5, %9
  %15 = icmp ult i64 %6, 3
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i1 [ true, %1 ], [ %15, %14 ]
  ret i1 %17
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local zeroext i1 @url_is_ssh(i8* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = call noalias i8* @strdup(i8* noundef %0) #11
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %1
  call void @free(i8* noundef %2) #11
  br label %9

9:                                                ; preds = %5, %8
  %10 = phi i1 [ true, %8 ], [ false, %5 ]
  ret i1 %10
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias i8* @strdup(i8* nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i8* @url_get_protocol(i8* nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #11
  %3 = icmp eq i8* %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %2) #11
  %6 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 0), align 16, !tbaa !5
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %2) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4, %13
  %10 = phi i64 [ %11, %13 ], [ 0, %4 ]
  %11 = add nuw nsw i64 %10, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %18, label %13, !llvm.loop !9

13:                                               ; preds = %9
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 %11
  %15 = load i8*, i8** %14, align 8, !tbaa !5
  %16 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %15, i8* noundef nonnull dereferenceable(1) %2) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %9, !llvm.loop !9

18:                                               ; preds = %9, %13
  %19 = icmp ult i64 %10, 3
  %20 = select i1 %19, i8* %2, i8* null
  br label %21

21:                                               ; preds = %4, %18, %1
  %22 = phi i8* [ null, %1 ], [ %2, %4 ], [ %20, %18 ]
  ret i8* %22
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @url_get_auth(i8* nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #11
  %3 = icmp eq i8* %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %2) #11
  %6 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 0), align 16, !tbaa !5
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %2) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4, %13
  %10 = phi i64 [ %11, %13 ], [ 0, %4 ]
  %11 = add nuw nsw i64 %10, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %18, label %13, !llvm.loop !9

13:                                               ; preds = %9
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 %11
  %15 = load i8*, i8** %14, align 8, !tbaa !5
  %16 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %15, i8* noundef nonnull dereferenceable(1) %2) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %9, !llvm.loop !9

18:                                               ; preds = %13, %9
  %19 = phi i64 [ %10, %13 ], [ 3, %9 ]
  %20 = icmp ult i64 %19, 3
  %21 = select i1 %20, i8* %2, i8* null
  br label %22

22:                                               ; preds = %1, %4, %18
  %23 = phi i8* [ null, %1 ], [ %2, %4 ], [ %21, %18 ]
  %24 = icmp eq i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = call i64 @strlen(i8* noundef nonnull %23) #10
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 %27, 3
  %29 = call fastcc i8* @get_part(i8* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %28)
  br label %30

30:                                               ; preds = %22, %25
  %31 = phi i8* [ %29, %25 ], [ null, %22 ]
  ret i8* %31
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noalias i8* @get_part(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #8 {
  %4 = call noalias dereferenceable_or_null(1) i8* @malloc(i64 noundef 1) #11
  %5 = call noalias i8* @strdup(i8* noundef %0) #11
  %6 = call noalias i8* @strdup(i8* noundef %0) #11
  %7 = icmp ne i8* %4, null
  %8 = icmp ne i8* %5, null
  %9 = select i1 %7, i1 %8, i1 false
  %10 = icmp ne i8* %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  store i8 0, i8* %6, align 1
  %13 = icmp sgt i32 %2, 0
  %14 = add i32 %2, -1
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %15, 1
  %17 = select i1 %13, i64 %16, i64 0
  %18 = getelementptr i8, i8* %6, i64 %17
  %19 = call noalias i8* @strdup(i8* noundef %18) #11
  %20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %19, i8* noundef %1, i8* noundef nonnull %4) #11
  %21 = call i32 @strcmp(i8* noundef nonnull %4, i8* noundef nonnull %5) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = call noalias i8* @strdup(i8* noundef nonnull %4) #11
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi i8* [ %24, %23 ], [ null, %12 ]
  call void @free(i8* noundef %4) #11
  call void @free(i8* noundef %5) #11
  br label %27

27:                                               ; preds = %3, %25
  %28 = phi i8* [ %26, %25 ], [ null, %3 ]
  ret i8* %28
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @url_get_hostname(i8* nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #11
  %3 = icmp eq i8* %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %2) #11
  %6 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 0), align 16, !tbaa !5
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %2) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4, %13
  %10 = phi i64 [ %11, %13 ], [ 0, %4 ]
  %11 = add nuw nsw i64 %10, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %18, label %13, !llvm.loop !9

13:                                               ; preds = %9
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 %11
  %15 = load i8*, i8** %14, align 8, !tbaa !5
  %16 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %15, i8* noundef nonnull dereferenceable(1) %2) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %9, !llvm.loop !9

18:                                               ; preds = %13, %9
  %19 = phi i64 [ %10, %13 ], [ 3, %9 ]
  %20 = icmp ult i64 %19, 3
  %21 = select i1 %20, i8* %2, i8* null
  br label %22

22:                                               ; preds = %1, %4, %18
  %23 = phi i8* [ null, %1 ], [ %2, %4 ], [ %21, %18 ]
  %24 = call noalias i8* @strdup(i8* noundef %23) #11
  %25 = call i8* @url_get_auth(i8* noundef %0)
  %26 = icmp eq i8* %23, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = call i64 @strlen(i8* noundef nonnull %25) #10
  %31 = trunc i64 %30 to i32
  %32 = add i32 %31, 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i32 [ %32, %29 ], [ 3, %27 ]
  br i1 %28, label %36, label %35

35:                                               ; preds = %33
  call void @free(i8* noundef %25) #11
  br label %36

36:                                               ; preds = %35, %33
  %37 = call i64 @strlen(i8* noundef nonnull %23) #10
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %34, %38
  call void @free(i8* noundef %23) #11
  %40 = call noalias i8* @strdup(i8* noundef %24) #11
  %41 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %40, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %40, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %36
  call void @free(i8* noundef %40) #11
  br label %47

47:                                               ; preds = %43, %46
  %48 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %46 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %43 ]
  %49 = call fastcc i8* @get_part(i8* noundef %0, i8* noundef %48, i32 noundef %39)
  call void @free(i8* noundef %24) #11
  br label %50

50:                                               ; preds = %22, %47
  %51 = phi i8* [ %49, %47 ], [ null, %22 ]
  ret i8* %51
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @url_get_path(i8* nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #11
  %3 = icmp eq i8* %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %2) #11
  %6 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 0), align 16, !tbaa !5
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %2) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4, %13
  %10 = phi i64 [ %11, %13 ], [ 0, %4 ]
  %11 = add nuw nsw i64 %10, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %18, label %13, !llvm.loop !9

13:                                               ; preds = %9
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 %11
  %15 = load i8*, i8** %14, align 8, !tbaa !5
  %16 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %15, i8* noundef nonnull dereferenceable(1) %2) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %9, !llvm.loop !9

18:                                               ; preds = %13, %9
  %19 = phi i64 [ %10, %13 ], [ 3, %9 ]
  %20 = icmp ult i64 %19, 3
  %21 = select i1 %20, i8* %2, i8* null
  br label %22

22:                                               ; preds = %1, %4, %18
  %23 = phi i8* [ null, %1 ], [ %2, %4 ], [ %21, %18 ]
  %24 = call i8* @url_get_auth(i8* noundef %0)
  %25 = call i8* @url_get_hostname(i8* noundef %0)
  %26 = icmp ne i8* %23, null
  %27 = icmp ne i8* %25, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %61

29:                                               ; preds = %22
  %30 = call noalias i8* @strdup(i8* noundef nonnull %23) #11
  %31 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %30, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %30, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %29
  call void @free(i8* noundef %30) #11
  br label %37

37:                                               ; preds = %33, %36
  %38 = phi i1 [ true, %36 ], [ false, %33 ]
  %39 = call i64 @strlen(i8* noundef nonnull %23) #10
  %40 = trunc i64 %39 to i32
  %41 = call i64 @strlen(i8* noundef nonnull %25) #10
  %42 = trunc i64 %41 to i32
  %43 = add i32 %40, 3
  %44 = add i32 %43, %42
  %45 = icmp eq i8* %24, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %37
  %47 = call i64 @strlen(i8* noundef nonnull %24) #10
  %48 = trunc i64 %47 to i32
  %49 = add i32 %44, 1
  %50 = add i32 %49, %48
  br label %51

51:                                               ; preds = %46, %37
  %52 = phi i32 [ %50, %46 ], [ %44, %37 ]
  %53 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %54 = select i1 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %55 = call fastcc i8* @get_part(i8* noundef %0, i8* noundef %53, i32 noundef %52)
  %56 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %55) #10
  %57 = call noalias i8* @malloc(i64 noundef %56) #11
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(1) %54, i8* noundef %55) #11
  br i1 %45, label %60, label %59

59:                                               ; preds = %51
  call void @free(i8* noundef %24) #11
  br label %60

60:                                               ; preds = %59, %51
  call void @free(i8* noundef %23) #11
  call void @free(i8* noundef %25) #11
  call void @free(i8* noundef %55) #11
  br label %61

61:                                               ; preds = %22, %60
  %62 = phi i8* [ %57, %60 ], [ null, %22 ]
  ret i8* %62
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #8 {
  %1 = call i8* @url_get_path(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0))
  %2 = call i32 @strcmp(i8* noundef nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %1) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #12
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
