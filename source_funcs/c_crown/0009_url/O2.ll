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
  %3 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(1) %0) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 1), align 8, !tbaa !5
  %7 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %0) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 2), align 16, !tbaa !5
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %10, i8* noundef nonnull dereferenceable(1) %0) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 3), align 8, !tbaa !5
  %15 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(1) %0) #10
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %13, %9, %5, %1
  %18 = phi i1 [ true, %1 ], [ true, %5 ], [ true, %9 ], [ %16, %13 ]
  ret i1 %18
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local zeroext i1 @url_is_ssh(i8* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call noalias i8* @strdup(i8* noundef %0) #11
  %3 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %1
  tail call void @free(i8* noundef %2) #11
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
  %2 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #11
  %3 = icmp eq i8* %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %2) #11
  %6 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 0), align 16, !tbaa !5
  %7 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %2) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 1), align 8, !tbaa !5
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %10, i8* noundef nonnull dereferenceable(1) %2) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 2), align 16, !tbaa !5
  %15 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(1) %2) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @URL_SCHEMES, i64 0, i64 3), align 8, !tbaa !5
  %19 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %18, i8* noundef nonnull dereferenceable(1) %2) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %9, %4, %17
  br label %22

22:                                               ; preds = %21, %17, %1
  %23 = phi i8* [ null, %1 ], [ %2, %21 ], [ null, %17 ]
  ret i8* %23
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @url_get_auth(i8* nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = tail call i8* @url_get_protocol(i8* noundef %0)
  %3 = icmp eq i8* %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @strlen(i8* noundef nonnull %2) #10
  %6 = trunc i64 %5 to i32
  %7 = add nsw i32 %6, 3
  %8 = tail call fastcc i8* @get_part(i8* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %7)
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8* [ %8, %4 ], [ null, %1 ]
  ret i8* %10
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noalias i8* @get_part(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #8 {
  %4 = tail call noalias dereferenceable_or_null(1) i8* @malloc(i64 noundef 1) #11
  %5 = tail call noalias i8* @strdup(i8* noundef %0) #11
  %6 = tail call noalias i8* @strdup(i8* noundef %0) #11
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
  %14 = add nsw i32 %2, -1
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %15, 1
  %17 = select i1 %13, i64 %16, i64 0
  %18 = getelementptr i8, i8* %6, i64 %17
  %19 = tail call noalias i8* @strdup(i8* noundef %18) #11
  %20 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %19, i8* noundef %1, i8* noundef nonnull %4) #11
  %21 = tail call i32 @strcmp(i8* noundef nonnull %4, i8* noundef nonnull %5) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call noalias i8* @strdup(i8* noundef nonnull %4) #11
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi i8* [ %24, %23 ], [ null, %12 ]
  tail call void @free(i8* noundef nonnull %4) #11
  tail call void @free(i8* noundef nonnull %5) #11
  br label %27

27:                                               ; preds = %3, %25
  %28 = phi i8* [ %26, %25 ], [ null, %3 ]
  ret i8* %28
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @url_get_hostname(i8* nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = tail call i8* @url_get_protocol(i8* noundef %0)
  %3 = tail call noalias i8* @strdup(i8* noundef %2) #11
  %4 = tail call i8* @url_get_protocol(i8* noundef %0) #11
  %5 = icmp eq i8* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @strlen(i8* noundef nonnull %4) #10
  %8 = trunc i64 %7 to i32
  %9 = add nsw i32 %8, 3
  %10 = tail call fastcc i8* @get_part(i8* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %9) #11
  %11 = icmp eq i8* %2, null
  br i1 %11, label %35, label %14

12:                                               ; preds = %1
  %13 = icmp eq i8* %2, null
  br i1 %13, label %35, label %20

14:                                               ; preds = %6
  %15 = icmp eq i8* %10, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = tail call i64 @strlen(i8* noundef nonnull %10) #10
  %18 = trunc i64 %17 to i32
  %19 = add i32 %18, 4
  tail call void @free(i8* noundef nonnull %10) #11
  br label %20

20:                                               ; preds = %12, %14, %16
  %21 = phi i32 [ %19, %16 ], [ 3, %14 ], [ 3, %12 ]
  %22 = tail call i64 @strlen(i8* noundef nonnull %2) #10
  %23 = trunc i64 %22 to i32
  %24 = add nsw i32 %21, %23
  tail call void @free(i8* noundef nonnull %2) #11
  %25 = tail call noalias i8* @strdup(i8* noundef %3) #11
  %26 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %25, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %25, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20, %28
  tail call void @free(i8* noundef %25) #11
  br label %32

32:                                               ; preds = %28, %31
  %33 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %31 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), %28 ]
  %34 = tail call fastcc i8* @get_part(i8* noundef %0, i8* noundef %33, i32 noundef %24)
  tail call void @free(i8* noundef %3) #11
  br label %35

35:                                               ; preds = %12, %6, %32
  %36 = phi i8* [ %34, %32 ], [ null, %6 ], [ null, %12 ]
  ret i8* %36
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @url_get_path(i8* nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = tail call i8* @url_get_protocol(i8* noundef %0)
  %3 = tail call i8* @url_get_protocol(i8* noundef %0) #11
  %4 = icmp eq i8* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(i8* noundef nonnull %3) #10
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, 3
  %9 = tail call fastcc i8* @get_part(i8* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %8) #11
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i8* [ %9, %5 ], [ null, %1 ]
  %12 = tail call i8* @url_get_hostname(i8* noundef %0)
  %13 = icmp ne i8* %2, null
  %14 = icmp ne i8* %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = tail call noalias i8* @strdup(i8* noundef nonnull %2) #11
  %18 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %17, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %17, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %16
  tail call void @free(i8* noundef %17) #11
  br label %24

24:                                               ; preds = %20, %23
  %25 = phi i1 [ true, %23 ], [ false, %20 ]
  %26 = tail call i64 @strlen(i8* noundef nonnull %2) #10
  %27 = trunc i64 %26 to i32
  %28 = tail call i64 @strlen(i8* noundef nonnull %12) #10
  %29 = trunc i64 %28 to i32
  %30 = add i32 %27, 3
  %31 = add i32 %30, %29
  %32 = icmp eq i8* %11, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = tail call i64 @strlen(i8* noundef nonnull %11) #10
  %35 = trunc i64 %34 to i32
  %36 = add i32 %31, 1
  %37 = add i32 %36, %35
  br label %38

38:                                               ; preds = %33, %24
  %39 = phi i32 [ %37, %33 ], [ %31, %24 ]
  %40 = select i1 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %41 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %42 = tail call fastcc i8* @get_part(i8* noundef %0, i8* noundef %40, i32 noundef %39)
  %43 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %42) #10
  %44 = tail call noalias i8* @malloc(i64 noundef %43) #11
  %45 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %44, i8* noundef nonnull dereferenceable(1) %41, i8* noundef %42) #11
  br i1 %32, label %47, label %46

46:                                               ; preds = %38
  tail call void @free(i8* noundef nonnull %11) #11
  br label %47

47:                                               ; preds = %46, %38
  tail call void @free(i8* noundef nonnull %2) #11
  tail call void @free(i8* noundef nonnull %12) #11
  tail call void @free(i8* noundef %42) #11
  br label %48

48:                                               ; preds = %10, %47
  %49 = phi i8* [ %44, %47 ], [ null, %10 ]
  ret i8* %49
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #8 {
  %1 = tail call i8* @url_get_path(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0))
  %2 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %1) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #12
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
