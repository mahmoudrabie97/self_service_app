abstract class RequestStates {}

class RequestInitialState extends RequestStates {}

class TimeRequestLoadingState extends RequestStates {}

class TimeOffRequestSucsessState extends RequestStates {}

class TimeOffRequestErrorState extends RequestStates {}

class DataSearchLoadingState extends RequestStates {}

class DataSearchSucsessState extends RequestStates {}

class DataSearchErrorState extends RequestStates {}
