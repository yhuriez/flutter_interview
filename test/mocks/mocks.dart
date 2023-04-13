

import 'package:flutter_interview/data/api/interview_api.dart';
import 'package:flutter_interview/domain/usecases/fetch_articles.dart';
import 'package:mocktail/mocktail.dart';

class MockInterviewApi extends Mock implements InterviewApi {}

class MockFetchArticlesUseCase extends Mock implements FetchArticlesUseCase {}
